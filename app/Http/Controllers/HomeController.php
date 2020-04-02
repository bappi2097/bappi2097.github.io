<?php

namespace App\Http\Controllers;

use Categories;
use App\Category;
use CategoryImages;
use App\PhotoGallery;
use App\PhotoCategory;
use App\TutorialCategory;
use App\Tutorial;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Quarantine;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function home()
    {
        $quarantineA = Quarantine::latest()->first();
        $quarantine['total_quarantine'] = $this->etobno($quarantineA->total_quarantine);
        $quarantine['finished_quarantine'] = $this->etobno($quarantineA->finished_quarantine);
        $categories = Category::with('categoryImages')->get();
        $aboutus = DB::table('about_us')->select('first_name', 'last_name', 'email', 'image', 'social_link')->get();
        $wdata = $this->wdataW();
        $bddata = $this->bddataW();
        return view('body', compact('categories', 'aboutus', 'bddata', 'wdata', 'quarantine'));
    }
    protected function bddataM()
    {
        try {
            $url = "https://corona.pixonlab.com/api/details?country=bangladesh";
            $datainjson = file_get_contents($url);
            $data = json_decode($datainjson, true)['data'][0];
            $bddata['cases'] = $this->etobnoS($data['total_case']);
            $bddata['active'] = $this->etobnoS($data['active_case']);
            $bddata['recovered'] = $this->etobnoS($data['total_recovered']);
            $bddata['deaths'] = $this->etobnoS($data['total_death']);
            $bddata['activeP'] = (((int) $data['active_case']) / ((int) $data['total_case'])) * 100;
            $bddata['recoveredP'] = (((int) $data['total_recovered']) / ((int) $data['total_case'])) * 100;
            $bddata['deathP'] = (((int) $data['total_death']) / ((int) $data['total_case'])) * 100;
            $bddata['deathPB'] = $this->etobno(number_format((((int) $data['total_death']) / ((int) $data['total_case'])) * 100, 2));
            return $bddata;
        } catch (Exception $e) {
            return null;
        }
    }
    protected function wdataM()
    {
        try {
            $url = "https://corona.pixonlab.com/api/data?date=" . date('Y-m-d');
            $datainjson = file_get_contents($url);
            $data = json_decode($datainjson, true)['statistics'];
            $wdata['cases'] = $this->etobnoS($data['total_case']);
            $wdata['active'] = $this->etobnoS($data['active_case']);
            $wdata['recovered'] = $this->etobnoS($data['total_recovered']);
            $wdata['deaths'] = $this->etobnoS($data['total_death']);
            return $wdata;
        } catch (Exception $e) {
            return null;
        }
    }
    protected function bddataW()
    {
        try {
            $url = "https://corona.lmao.ninja/countries/bangladesh";
            $datainjson = file_get_contents($url);
            $data = json_decode($datainjson, true);
            $bddata['cases'] = $this->etobno($data['cases']);
            $bddata['active'] = $this->etobno($data['active']);
            $bddata['recovered'] = $this->etobno($data['recovered']);
            $bddata['deaths'] = $this->etobno($data['deaths']);
            $bddata['activeP'] = ($data['active'] / $data['cases']) * 100;
            $bddata['recoveredP'] = ($data['recovered'] / $data['cases']) * 100;
            $bddata['deathP'] = ($data['deaths'] / $data['cases']) * 100;
            $bddata['deathPB'] = $this->etobno(number_format((($data['deaths'] / $data['cases']) * 100), 2));
            return $bddata;
        } catch (Exception $e) {
            return $this->bddataM();
        }
    }
    protected function wdataW()
    {
        try {
            $url = "https://corona.lmao.ninja/all";
            $datainjson = file_get_contents($url);
            $jsondata = json_decode($datainjson, true);
            $wdata['cases'] = $this->etobno($jsondata['cases']);
            $wdata['active'] = $this->etobno($jsondata['cases'] - $jsondata['recovered'] - $jsondata['deaths']);
            $wdata['recovered'] = $this->etobno($jsondata['recovered']);
            $wdata['deaths'] = $this->etobno($jsondata['deaths']);
            return $wdata;
        } catch (Exception $e) {
            return $this->wdataM();
        }
    }

    public function symptoms()
    {
        return view('symptoms2');
    }

    public function result()
    {
        if (request()->ques11 == 1 && !preg_match("/^\+?(88)?0?1[3456789][0-9]{8}\b/", request()->phone_number)) {
            return response()->json(array('isValid' => false));
        }
        if (request()->ques11 == 0) {
            request()->phone_number = "";
        }
        $data = [
            'ques1' => request()->ques1,
            'ques2' => request()->ques2,
            'ques3' => request()->ques3,
            'ques4' => request()->ques4,
            'ques5' => request()->ques5,
            'ques6' => request()->ques6,
            'ques7' => request()->ques7,
            'ques8' => request()->ques8,
            'ques9' => request()->ques9,
            'ques11' => request()->ques11,
            'heart' => (request()->heart == "true" ? 1 : 0),
            'diabetics' => (request()->diabetics == "true" ? 1 : 0),
            'asthama' => (request()->asthama == "true" ? 1 : 0),
            'high_pressure' => (request()->high_pressure == "true" ? 1 : 0),
            'nothing' => (request()->nothing == "true" ? 1 : 0),
            'result' => request()->result,
            'phone_number' => request()->phone_number
        ];
        if (DB::table('coronabot')->insert($data)) {
            return response()->json(array('success' => true, 'isValid' => true));
        }
    }
    public function gallery()
    {
        $photoCategories = PhotoCategory::with('photoGalleries')->get();
        return view('photo_gallery', compact('photoCategories'));
    }

    protected function etobno($no)
    {
        $str = (string) $no;
        $search = array("0", "1", "2", "3", "4", "5", '6', "7", "8", "9");
        $replace = array("০", "১", "২", "৩", "৪", "৫", "৬", "৭", "৮", "৯");
        return str_replace($search, $replace, $str);
    }
    protected function etobnoS($str)
    {
        $search = array("0", "1", "2", "3", "4", "5", '6', "7", "8", "9");
        $replace = array("০", "১", "২", "৩", "৪", "৫", "৬", "৭", "৮", "৯");
        return str_replace($search, $replace, $str);
    }

    public function faq()
    {
        $data = DB::table('faq')->select('*')->get();
        return view('FAQ', compact('data'));
    }
    public function tutorialHome()
    {
        $tutorialcategories = TutorialCategory::with('tutorials')->get();
        return view('tutorial_home', compact('tutorialcategories'));
    }
    public function tutorialFull($id)
    {
        if (!Tutorial::where('id', $id)->exists())
            return response()->view('error');
        $tutorial = Tutorial::where('id', $id)->first();
        return view('tutorial_full', compact('tutorial'));
    }
}

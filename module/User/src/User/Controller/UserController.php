<?php

namespace User\Controller;
use \Zend\Mvc\Controller\AbstractActionController;
use \User\Model\Userdata;
use \User\Model\Provider;
use \Zend\View\Model\ViewModel;
use Zend\Session\Container;

class UserController extends AbstractActionController {
    protected $userdatatable;
    protected $providerTable;
    protected $jobTable;
    public function indexAction(){
//         $this->headScript()->appendFile('http://platform.linkedin.com/in.js');
//        $result = $this->select_cat();
         $sess = isset($_GET['sess'])?$_GET['sess']:"";
        $cv = $this->getUserdataTable()->get_js_id($sess);
        $cv_id = 0;
        foreach ($cv as $row):
            $cv_id = $row['id'];
         endforeach;
        $data = $this->getUserdataTable()->select_cat();
       $result = $this->getUserdataTable()->select_cat();
        $resultq = $this->getUserdataTable()->display_exp($cv_id);
        $result1 = $this->getUserdataTable()->display_exp($cv_id);
        $result_edu = $this->getUserdataTable()->display_edu($cv_id);
         return new ViewModel(array('data'=>$data,'result'=>$result,'datas'=>$resultq,'datass'=>$result1,'result_edu'=>$result_edu));
    }
    public function showdbAction(){
        return new ViewModel(array(
            'userdatas' => $this->getUserdataTable()->fetchAll(),
        ));
    }
    public function insertAction(){
               
                $provider_id = $_POST['id'];
                if($provider_id != null){
                    $pic_url = $_POST['pic_url'];
                }else{
                    $pic_url = $pic;
                }
               $pos_title =$_POST['exp_title'];
               $pos_company = $_POST['exp_com'];
               $pos_date=$_POST['exp_date'];
               $pos_summary= $_POST['exp_summary'];
               $edu_schoolName = $_POST['edu_school'];
               $edu_fieldOfStudy = $_POST['edu_field'];
               $edu_date = $_POST['edu_date'];
               $edu_degree = $_POST['edu_degree'];
               $edu_activities = $_POST['edu_act'];
               $edu_note = $_POST['edu_note'];
               $j= explode(',', $pos_title);
               $exp_com = explode(',', $pos_company);
               $exp_date = explode(',', $pos_date);
               $exp_sum = explode(',', $pos_summary);
               $k = explode(',', $edu_schoolName);
               $edu_field = explode(',', $edu_fieldOfStudy);
               $edu_dat = explode(',', $edu_date);
               $edu_de = explode(',', $edu_degree);
               $edu_act = explode(',', $edu_activities);
               $edu_notes = explode(',', $edu_note);
//               echo $_POST['sess'];
              $js_id = $this->getUserdataTable()->get_js_id($_POST['sess']);
              $js=0;
              foreach($js_id as $row):
                  $js = $row['id'];
                  endforeach;
               $first_name= $_POST['first_name'];
               $last_name =$_POST['last_name'];
               $interest = $_POST['interest'];
               $jobs_cat = $_POST['jobs_cate'];
               $data=array(
                   'pic_url' => $pic_url,
                   'id'   => $js,
                   'first_name'=>$first_name,
                   'last_name'=>$last_name,
                   'interest' => $interest,
//                   'dateOfBirth' => $dateOfBirth,
                   'jobs_cate' => $jobs_cat,
                   
               );
               $datas = new Userdata();
               $datas->exchangeArray($data);
               $this->getUserdataTable()->addtoDb($datas);
               for ($i=0;$i<count($j);$i++){
                   $data = array(
                       'user_id'      =>  $js,
                       'exp_position'=>  $j[$i],
                       'exp_company'=>  $exp_com[$i],
                       'exp_date'   =>  $exp_date[$i],
                       'exp_summary'=>  $exp_sum[$i]
                   );
                   $this->getUserdataTable()->addtoexp($data);
               }
               for($i=0;$i<count($k);$i++){
                   $data = array(
                       'edu_schoolName' => $k[$i],
                       'edu_field'      => $edu_field[$i],
                       'edu_date'       => $edu_dat[$i],
                       'edu_degree'     => $edu_de[$i],
                       'edu_notes'      => $edu_notes[$i],
                       'edu_activities' => $edu_act[$i],
                       'user_id'    => $js
                   );
                   $this->getUserdataTable()->addtoedu($data);
               }
               $skill = isset($_POST['skill'])?$_POST['skill']:"";
               $sk = explode(',', $skill);
               
               for($i=0;$i<count($sk);$i++){
                   $data = array(
                       'skill'  =>  $sk[$i],
                       'user_id'=>$js
                   );
                   $this->getUserdataTable()->addskill($data);
               }
              
               return $this->redirect()->toUrl('userdata');
               
    }
    
    public function showdetailAction(){
        $id = $this->params()->fromRoute('id', 0);
        return new ViewModel(array('userdatas' => $this->getUserdataTable()->showall($id)));
    }

    public function getUserdataTable()
    {
        if (!$this->userdatatable) {
            $sm = $this->getServiceLocator();
            $this->userdatatable= $sm->get('User\Model\UserdataTable');
        }
        return $this->userdatatable;
    }
    public function getProviderTable(){
        if(!$this->providerTable){
            $sm = $this->getServiceLocator();
            $this->providerTable = $sm ->get('User\Model\ProviderTable');
        }
        return $this->providerTable;
    }
//    public function getUserId($provider_id){
//        $providerId = new Provider();
//        $providerId->exchangeArray($provider_id);
//        return $this->getProviderTable()->getUserId($providerId);
//        
//    }

    public function inforformAction(){
        return new ViewModel();
    }
    public function get_job(){
       $sm = $this->getServiceLocator();
       $this->jobTable = $sm->get('User\Model\JobTable');
       return $this->jobTable;
    }
    public function getjobAction(){
        return new ViewModel(array('result'=>$this->get_job()->select_job()));
    }
    public function insertsubAction(){
             $uploadpath = './public/';      // directory to store the uploaded files
             $max_size = 200000;          // maximum file size, in KiloBytes
             $alwidth = 90000;            // maximum allowed width, in pixels
             $alheight = 80000;           // maximum allowed height, in pixels
             $allowtype = array('bmp', 'gif', 'jpg', 'jpe', 'png');        // allowed extensions

             if(isset($_FILES['pic_url']) && strlen($_FILES['pic_url']['name']) > 1) {
               $uploadpath = $uploadpath . basename( $_FILES['pic_url']['name']);       // gets the file name
               $sepext = explode('.', strtolower($_FILES['pic_url']['name']));
               $type = end($sepext);       // gets extension
               list($width, $height) = getimagesize($_FILES['pic_url']['tmp_name']);     // gets image width and height
               $err = '';         // to store the errors

               // Checks if the file has allowed type, size, width and height (for images)
               if(!in_array($type, $allowtype)) $err .= 'The file: <b>'. $_FILES['pic_url']['name']. '</b> not has the allowed extension type.';
               if($_FILES['pic_url']['size'] > $max_size*1000) $err .= '<br/>Maximum file size must be: '. $max_size. ' KB.';
               if(isset($width) && isset($height) && ($width >= $alwidth || $height >= $alheight)) $err .= '<br/>The maximum Width x Height must be: '. $alwidth. ' x '. $alheight;

               // If no errors, upload the image, else, output the errors
               if($err == '') {
                 if(move_uploaded_file($_FILES['pic_url']['tmp_name'], $uploadpath)) { 
//                   echo 'File: <b>'. basename( $_FILES['pic_url']['name']). '</b> successfully uploaded:';
//                   echo '<br/>File type: <b>'. $_FILES['pic_url']['type'] .'</b>';
//                   echo '<br />Size: <b>'. number_format($_FILES['pic_url']['size']/1024, 3, '.', '') .'</b> KB';
                   if(isset($width) && isset($height)) echo '<br/>Image Width x Height: '. $width. ' x '. $height;
//                   echo '<br/><br/>Image address: <b>http://'.$_SERVER['HTTP_HOST'].rtrim(dirname($_SERVER['REQUEST_URI']), '\\/').'/'.$uploadpath.'</b>';
                 }
//                 else echo '<b>Unable to upload the file.</b>';
               }
               else echo $err;
             }
             if(isset($_POST['pic_url'])){
                 $pic = $_POST['pic_url'];
             }else{
                             $pic="http://khmer.jobs/".$_FILES['pic_url']['name'];
             }
             
             $first_name = $_POST['first_name'];
             $last_name = $_POST['last_name'];
             $job_cat = $_POST['jobs_cate'];
             $interest = $_POST['interest'];
             $js = 0;
             $js_id = $this->getUserdataTable()->get_js_id($_POST['sess']);
              foreach($js_id as $row):
                  $js = $row['id'];
                  endforeach;
             $data = array(
                 'pic_url'=>$pic,
                 'first_name'=>$first_name,
                 'last_name' => $last_name,
                 'interest' => $interest,
                 'jobs_cate' => $job_cat,
                 'user_id'    =>$js
             );
             var_dump($data);
//             $datas = new Userdata();
//             $datas->exchangeArray($data);
             $this->getUserdataTable()->insert_sub($data);
             return $this->redirect()->toUrl('userdata');
//             return new ViewModel();
             
    }
    public function insertexpAction(){
        
        $sess = isset($_POST['sess'])?$_POST['sess']:"";
        $exp_pos = isset($_POST['exp_pos'])?$_POST['exp_pos']:"";
        $exp_com = isset($_POST['exp_com'])?$_POST['exp_com']:"";
        $exp_date = isset($_POST['exp_date'])?$_POST['exp_date']:"";
        $exp_sum = isset($_POST['exp_sum'])?$_POST['exp_sum']:"";
        $cv = $this->getUserdataTable()->get_js_id($sess);
        $user_id = 0;
        foreach ($cv as $row):
            $user_id = $row['id'];
        
        
        $data = array(
            'exp_position' => $exp_pos,
            'exp_company' => $exp_com,
            'exp_date' => $exp_date,
            'exp_summary' => $exp_sum,
            'user_id' => $user_id
        );
        
        $this->getUserdataTable()->addtoexp($data);
         endforeach;
        return $this->redirect()->toUrl('/userdata?sess='.$sess);
    }
    public function updateexpAction(){
        $sess = isset($_POST['sess'])?$_POST['sess']:"";
        $exp_pos = isset($_POST['exp_pos'])?$_POST['exp_pos']:"";
        $exp_com = isset($_POST['exp_com'])?$_POST['exp_com']:"";
        $exp_date = isset($_POST['exp_date'])?$_POST['exp_date']:"";
        $exp_sum = isset($_POST['exp_sum'])?$_POST['exp_sum']:"";
        $exp_id = $this->getEvent()->getRouteMatch()->getParam('slug');
        $data = array(
            'exp_position' => $exp_pos,
            'exp_company' => $exp_com,
            'exp_date' => $exp_date,
            'exp_summary' => $exp_sum,
            'exp_id' => $exp_id
        );
//        var_dump($data);
        $this->getUserdataTable()->updatetoexp($data);
       return $this->redirect()->toUrl('/userdata?sess='.$sess);
    }
    public function inserteduAction(){
        $sess = isset($_POST['sess'])?$_POST['sess']:"";
        $edu_schoolName = isset($_POST['edu_schoolName'])?$_POST['edu_schoolName']:"";
        $edu_field = isset($_POST['edu_fieldOfStudy'])?$_POST['edu_fieldOfStudy']:"";
        $edu_date = isset($_POST['edu_date'])?$_POST['edu_date']:"";
        $edu_degree = isset($_POST['edu_degree'])?$_POST['edu_degree']:"";
        $edu_act = isset($_POST['edu_act'])?$_POST['edu_act']:"";
        $edu_note = isset($_POST['edu_note'])?$_POST['edu_note']:"";
        $cv = $this->getUserdataTable()->get_js_id($sess);
        $user_id = 0;
        foreach ($cv as $row):
            $user_id = $row['id'];
         endforeach;
         $data = array(
             'edu_schoolName' => $edu_schoolName,
             'edu_field' => $edu_field,
             'edu_date' => $edu_date,
             'edu_degree' => $edu_degree,
             'edu_activities' => $edu_act,
             'edu_notes' => $edu_note,
             'user_id' => $user_id
         );
         $this->getUserdataTable()->addtoedu($data);
         return $this->redirect()->toUrl('userdata?sess='.$sess);
    }
    
}
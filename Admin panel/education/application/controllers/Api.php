<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
     public function __construct()
     {
                parent::__construct();
                // Your own constructor code
                $this->load->database();
                
                header('Content-type: text/json');
     }
 
 /* student login */ 
 
public function login(){
     //$_POST = $_REQUEST;
     
        $this->load->library('form_validation');
        $this->form_validation->set_rules('student_user_name', 'User Name', 'trim|required');
        $this->form_validation->set_rules('student_password', 'Password', 'trim|required');
        if ($this->form_validation->run() == FALSE) 
  		{
  		              $data["responce"] = false;
        			  $data["error"] = $this->form_validation->error_string();
  		}
  		else
  		{        
	               $q = $this->db->query("Select student_id,school_id,student_user_name,student_status,student_unique_no,student_name,student_birthdate,student_roll_no,student_standard,student_address,student_city,student_phone,student_parent_phone,student_email,student_photo,student_branch,student_semester,student_division,student_batch from `student_detail` where `student_user_name`='".$this->input->post("student_user_name")."' and student_password='".md5($this->input->post("student_password"))."' Limit 1");
                   $student = $q->row();             
                   if (!empty($student))
                   {
                        if($student->student_status == "0")
                        {
                            $data["responce"] = false;
                            $data["error"] = 'Your account currently inactive';
                        }
                        else
                        {
                           
                            $data["data"] = $student;
                            $data["responce"] = true;             
                        }
                    }
                    
                   else
                   {
                            $data["responce"] = false;
                            $data["error"] = 'Student not found';
                   }
                
       }
       //$data["error"] = $_POST;
       echo json_encode($data); 
          
    }

/* get student profile */

    public function get_student_profile(){
                $data = array(); 
            if($_REQUEST["student_id"]!=""){
                
                //$q = $this->db->query("select * from `student_detail` INNER JOIN categories ON job.category_id = categories.id where job.user_id = ".$_REQUEST["user_id"]);
                 $q = $this->db->query("select student_detail.*, school_detail.school_name, school_detail.school_address, standard.standard_title from `student_detail` 
                 INNER JOIN school_detail ON school_detail.user_id = student_detail.school_id 
                 INNER JOIN standard ON standard.standard_id = student_detail.student_standard 
                 where student_detail.student_id = ".$_REQUEST["student_id"]);
                $data["responce"] = true;
                $data["data"] = $q->row();
            }else{
                $data["responce"] = false;  
                $data["error"] = "Error! : Student id is required";
            }
            echo json_encode($data);
    }    
 
 /* get student growth */

    public function get_student_growth(){
                $data = array(); 
            if($_REQUEST["student_id"]!=""){
                
                //$q = $this->db->query("select * from `student_detail` INNER JOIN categories ON job.category_id = categories.id where job.user_id = ".$_REQUEST["user_id"]);
                 $q = $this->db->query("select * from `student_growth` where student_id = ".$_REQUEST["student_id"]);
                $data["responce"] = true;
                $data["data"] = $q->result();
            }else{
                $data["responce"] = false;  
                $data["error"] = "Error! : Student id is required";
            }
            echo json_encode($data);
    }
    
 /* get school event */

    public function get_school_event(){
                $data = array(); 
            if($_REQUEST["school_id"]!=""){
                
                //$q = $this->db->query("select * from `student_detail` INNER JOIN categories ON job.category_id = categories.id where job.user_id = ".$_REQUEST["user_id"]);
                 $q = $this->db->query("select * from `event` where school_id = ".$_REQUEST["school_id"]);
                $data["responce"] = true;
                $data["data"] = $q->result();
            }else{
                $data["responce"] = false;  
                $data["error"] = "Error! : School id is required";
            }
            echo json_encode($data);
    }
        
 /* get school notice board */

    public function get_school_noticeboard(){
                $data = array(); 
            if($_REQUEST["school_id"]!=""){
                
                //$q = $this->db->query("select * from `student_detail` INNER JOIN categories ON job.category_id = categories.id where job.user_id = ".$_REQUEST["user_id"]);
                 $q = $this->db->query("select * from `notice_board` where  notice_status=1 and school_id = ".$_REQUEST["school_id"]);
                $data["responce"] = true;
                $data["data"] = $q->result();
            }else{
                $data["responce"] = false;  
                $data["error"] = "Error! : School id is required";
            }
            echo json_encode($data);
    }

    public function get_school_teacher(){
                $data = array(); 
            if($_REQUEST["school_id"]!=""){
                
                //$q = $this->db->query("select * from `student_detail` INNER JOIN categories ON job.category_id = categories.id where job.user_id = ".$_REQUEST["user_id"]);
                 $q = $this->db->query("select * from `teacher_detail` where  school_id = '".$_REQUEST["school_id"]."'");
                $data["responce"] = true;
                $data["data"] = $q->result();
            }else{
                $data["responce"] = false;  
                $data["error"] = "Error! : School id is required";
            }
            echo json_encode($data);
    }
    
    public function get_student_attendence(){
            if($_REQUEST["student_id"]!="" && $_REQUEST["month"]){
                    $str_date = $_REQUEST["year"]."-".$_REQUEST["month"]."-01";
                    $start_date = date("Y-m-d",strtotime($str_date));
                    $end_date = date("Y-m-t",strtotime($str_date));
                    $sql = "Select * from attendence where attendence_date >= '".$start_date."' and attendence_date <= '".$end_date."' and student_id = '".$_REQUEST["student_id"]."'";
                    $q = $this->db->query($sql);
                $data["responce"] = true;
                $data["data"] = $q->result();
                    
            }else{
                $data["responce"] = false;  
                $data["error"] = "Error! : School id is required";
            }
            echo json_encode($data);
    }

    public function get_holidays(){
            if($_REQUEST["school_id"]!="" && $_REQUEST["month"]){
                    $str_date = $_REQUEST["year"]."-".$_REQUEST["month"]."-01";
                    $start_date = date("Y-m-d",strtotime($str_date));
                    $end_date = date("Y-m-t",strtotime($str_date));
                    $sql = "Select * from holiday where holiday_date >= '".$start_date."' and holiday_date <= '".$end_date."' and school_id = '".$_REQUEST["school_id"]."'";
                    $q = $this->db->query($sql);
                $data["responce"] = true;
                $data["data"] = $q->result();
                    
            }else{
                $data["responce"] = false;  
                $data["error"] = "Error! : School id is required";
            }
            echo json_encode($data);
    }

     
    public function get_exams(){
                $data = array(); 
            if($_REQUEST["standard_id"]!="" && $_REQUEST["school_id"]){
                
                //$q = $this->db->query("select * from `student_detail` INNER JOIN categories ON job.category_id = categories.id where job.user_id = ".$_REQUEST["user_id"]);
                 $q = $this->db->query("select * from `exam` where exam_standard = '".$_REQUEST["standard_id"]."' and school_id='".$_REQUEST["school_id"]."' order by exam_date DESC");
                $data["responce"] = true;
                $data["data"] = $q->result();
            }else{
                $data["responce"] = false;  
                $data["error"] = "Error! : Student id is required";
            }
            echo json_encode($data);
    }
    public function get_results(){
            $data = array(); 
            if($_REQUEST["standard_id"]!="" && $_REQUEST["school_id"]){
                
                //$q = $this->db->query("select * from `student_detail` INNER JOIN categories ON job.category_id = categories.id where job.user_id = ".$_REQUEST["user_id"]);
                $q = $this->db->query("select DISTINCT `exam`.* from `exam` 
                inner join exam_result on exam_result.exam_id = exam.exam_id
                where exam_standard = '".$_REQUEST["standard_id"]."' and school_id='".$_REQUEST["school_id"]."' order by exam_date DESC");
                $results = $q->result();
                $data["responce"] = true;
                $data["data"] = $results;
                
            }else{
                $data["responce"] = false;  
                $data["error"] = "Error! : Student id is required";
            }
            echo json_encode($data);
    }  
    public function get_result_report(){
        
        $data = array(); 
            if($_REQUEST["exam_id"]!="" && $_REQUEST["student_id"]){
                
                //$q = $this->db->query("select * from `student_detail` INNER JOIN categories ON job.category_id = categories.id where job.user_id = ".$_REQUEST["user_id"]);
                $q = $this->db->query("select exam_result.* from `exam_result` 
                where exam_id = '".$_REQUEST["exam_id"]."' and student_id='".$_REQUEST["student_id"]."' ");
                $results = $q->result();
                $data["responce"] = true;
                $data["data"] = $results;
                
            }else{
                $data["responce"] = false;  
                $data["error"] = "Error! : Student id is required";
            }
            echo json_encode($data);
    }
    
    public function get_enquiry(){
       
        $sql = "Select * from school_student_chat where school_id = '".$this->input->post("school_id")."' and student_id = '".$this->input->post("student_id")."'  order by on_date DESC";
        
        $q = $this->db->query($sql);
        $data["responce"] = true;
        $data["data"] = $q->result();             
        echo json_encode($data);           
    }
    public function send_enquiry(){
     //$_POST = $_REQUEST;
     
        $this->load->library('form_validation');
        $this->form_validation->set_rules('subject', 'Subject', 'trim|required');
        $this->form_validation->set_rules('message', 'Message', 'trim|required');
        $this->form_validation->set_rules('school_id', 'School ID', 'trim|required');
        $this->form_validation->set_rules('student_id', 'Student Id', 'trim|required');
        if ($this->form_validation->run() == FALSE) 
  		{
  		              $data["responce"] = false;
        			  $data["error"] = $this->form_validation->error_string();
  		}
  		else
  		{        
	               $this->db->insert("school_student_chat",array("student_id"=>$this->input->post("student_id"),
                   "school_id"=>$this->input->post("school_id"),
                   "message"=>$this->input->post("message"),
                   "subject"=>$this->input->post("subject")));
                   
                   $chat_id = $this->db->insert_id();
                   
                   $q = $this->db->query("Select * from school_student_chat where chat_id = '".$chat_id."' limit 1");
                   $data["responce"] = true;
                   $data["data"] = $q->row();             
                   
                
       }
       //$data["error"] = $_POST;
       echo json_encode($data); 
          
    }

/* get top 10 student by standard */
    public function get_top_student(){
            $data = array(); 
            if($_REQUEST["standard_id"]!="" && $_REQUEST["school_id"]){
                
                $q = $this->db->query("select DISTINCT `top_student`.*, `student_detail`.student_name, `student_detail`.student_photo, `student_detail`.student_roll_no, `standard`.standard_title from `top_student` 
		inner join student_detail on student_detail.student_id = top_student.student_id
		inner join standard on standard.standard_id = top_student.standard_id
                 where top_student.standard_id = '".$_REQUEST["standard_id"]."' and top_student.school_id='".$_REQUEST["school_id"]."' order by top_student.student_rank ASC");
                $results = $q->result();
                $data["responce"] = true;
                $data["data"] = $results;
                
            }else{
                $data["responce"] = false;  
                $data["error"] = "Error! : Standrd id and school id is required";
            }
            echo json_encode($data);
    }
    
    public function register_gcm(){
         
            $email = $this->input->post("email");
                  $regid = $this->input->post("regId");
                  //$imei = $this->input->post("imei");
                    
                    $add = array(
                            "email"=>$email,
                             "gcm_code"=>$regid
                            );
                $this->db->update("student_detail",array("gcm_code"=>$regid),array("student_id"=>$email));
                
                $gcm = $this->db->query($query);
                $data["responce"] = true;
                
             
    echo json_encode($data);
    }
}

?>
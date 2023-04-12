<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class School extends CI_Controller {
    public function __construct()
    {
                parent::__construct();
                // Your own constructor code
                $this->load->database();
                $this->load->helper('login_helper');
    }
    function dashboard(){
        $this->load->view('school/dashboard');
    }
      function profile(){
        if(_is_user_login($this)){
               
          $this->load->model("school_model");
          $data["schooldetail"] = $this->school_model->get_school_profile();
          
          $data["error"] = "";
            
           if(isset($_REQUEST["saveprofile"])){
                $this->load->library('form_validation');
                
                $this->form_validation->set_rules('school_name', 'School Name', 'trim|required');
                $this->form_validation->set_rules('school_address', 'School Address', 'trim|required');
                $this->form_validation->set_rules('school_person_name', 'School Person Name', 'trim|required');
                $this->form_validation->set_rules('school_city', 'City Name', 'trim|required');
                $this->form_validation->set_rules('school_phone1', 'School Phone1', 'trim|required');
                $this->form_validation->set_rules('school_email', 'School Email', 'trim|required');
                if ($this->form_validation->run() == FALSE) 
        		{
        		  
        			$data["error"] = '<div class="alert alert-warning alert-dismissible" role="alert">
                                  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                  <strong>Warning!</strong> '.$this->form_validation->error_string().'
                                </div>';
                    
        		}else
                {
                        
                        $file_name="";
                        $config['upload_path'] = './uploads/profile/';
                		$config['allowed_types'] = 'gif|jpg|png|jpeg';
                       $this->load->library('upload', $config);
                        $school_profile = array(
                            "school_name"=>$this->input->post("school_name"),
                            "school_person_name"=>$this->input->post("school_person_name"),
                            "school_address"=>$this->input->post("school_address"),
                            "school_city"=>$this->input->post("school_city"),
                            "school_state"=>$this->input->post("school_state"),
                            "school_postal_code"=>$this->input->post("school_postal_code"),
                            "school_phone1"=>$this->input->post("school_phone1"),
                            "school_phone2"=>$this->input->post("school_phone2"),
                            "school_email"=>$this->input->post("school_email"),
                            "school_fax"=>$this->input->post("school_fax"),
                            "user_id"=>_get_current_user_id($this)
                            );
                            
                            $update_string= "school_name='".$this->input->post('school_name')."',
                                               school_person_name='".$this->input->post('school_person_name')."',
                                               school_address='".$this->input->post('school_address')."',
                                               school_city='".$this->input->post('school_city')."',
                                               school_state='".$this->input->post('school_state')."',
                                               school_postal_code='".$this->input->post('school_postal_code')."',
                                               school_phone1='".$this->input->post('school_phone1')."',
                                               school_phone2='".$this->input->post('school_phone2')."',
                                               school_email='".$this->input->post('school_email')."',
                                               school_fax='".$this->input->post('school_fax')."'";
                            
               if($_FILES["school_logo"]["size"] > 0)
                		if ( ! $this->upload->do_upload('school_logo'))
                		{
                			$error = array('error' => $this->upload->display_errors());
                
                			$this->load->view('upload_form', $error);
                		}
                		else
                		{
                			$file_data = $this->upload->data();
                            $file_name = $file_data["file_name"];
                            $update_string.=",school_logo='".$file_name."'";
                			$school_profile["school_logo"] = $file_name;
                		}               
            $query = $this->db->insert_string("school_detail", $school_profile)
                                               . " ON DUPLICATE KEY UPDATE $update_string ";
            
            $this->db->query($query);
            
                            $this->session->set_flashdata("message", '<div class="alert alert-success alert-dismissible" role="alert">
                                  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                  <strong>Success!</strong> School Profile Update Successfully
                                </div>');
                                redirect("school/profile");
                        
                }
            }
            
            
            $this->load->view("school/profile",$data);
        }
    }
}
?>
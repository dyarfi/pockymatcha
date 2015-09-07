<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Quest extends Public_Controller {

	public function __construct() {
		parent::__construct();
		
	    // Load facebook and headers
	    //$this->load->library('facebook');
	    //$this->load->model('user_model');		
	    //$this->load->model('gallery_model');

        // Load Participant related model 
		$this->load->model('participant/Participants');
        $this->load->model('questionnaire/Questionnaires');
        $this->load->model('questionnaire/QuestionnaireCompleted');
		$this->load->model('questionnaire/QuestionnaireUserAnswers');
        $this->load->model('questionnaire/QuestionRules');

        // Check if session was made 
		if ($this->participant) {
		
			// Set temporary data
			$this->_participant = $this->Participants->getParticipant($this->participant->id);
			
			// Unset data from session
			unset($this->participant);	
			
			// Set new data and to session
			$this->participant = $this->_participant;
			$this->session->set_userdata('participant',$this->participant);
			
		}

		
	}
	
	public function index() {

	    // Return if not ajax requested
		//if (!$this->input->is_ajax_request()) {
			//echo 'Not Allowed!';
		//exit;
	    //}

	    $questionnaire_done = $this->QuestionnaireCompleted->getUserCompletedQuestionnaire($this->participant->id);
	    
	    // Load session id
	    $data['participant'] 	= base64_encode($this->session->userdata('session_id'));

	    // Load Questionaires data
	    $data['questions'] 		= $this->Questionnaires->get_all_questions(1000,0);

	    // Load Questionaires data
	    $data['questionnaires']	= $this->Questionnaires->get_all_questionnaires_checked('1000',0,'','',$questionnaire_done);

	    // Load Questionnaire count
	    $data['questionnaire_count']= $this->Questionnaires->get_count_questionnaires();

	    $progress_only_one  = !$questionnaire_done ? '0' : count($questionnaire_done['questionnaire_id']);
	    //$progress_only_one  = ($progress_only_one == count($questionnaire_done['questionnaire_id'])) ? '100' : $progress_only_one; 
	    //print_r($progress_only_one % $this->Questionnaires->get_count_questionnaires()); echo '<br/>';
	    //print_r($this->Questionnaires->get_count_questionnaires())
	    //print_r($progress_only_one);

	    // Set main template
	    $data['main'] 			= 'quest';

	    // Set site title page with module menu
	    $data['page_title'] 	= 'Questionnaiers';
		
	    // Set default result
	    //$result		= '';

	    // Set participant id from session
	    //$part_id 	= $this->user_model->decode($this->session->userdata('user_id'));      

	    // Set participant id from session
	    //$image_id 	= base64_decode($this->input->post('image'));

	    // Set scores with image id and participant id		
	    //if (!empty($part_id)) {
		    //$result = @$this->gallery_model->insert_score($part_id, $image_id);
	    //}

	    // Return data esult
	    //$data['json'] = $result;

	    // Load data into view		
	    //$this->load->view('json', $this->load->vars($data));	

	    // Default data setup
	    $fields	= array();
	    $valids	= array();
	    
	    $i = 0;
	    foreach ($data['questionnaires'] as $val) {
		$fields['qrid_'.$val->id] = '';
		$valids[$i]['field'] = 'qrid_'.$val->id;
		$valids[$i]['label'] = 'Pertanyaan No. '.$val->id;
		$valids[$i]['rules'] = 'required';
		$i++;
	    }
	    
	    // Set default error value
	    $errors = $fields;
	    
	    // Set form validation
	    $this->form_validation->set_rules($valids);
	
	    // Set default progress
	    $progress = 0;
		
		// Check if post is requested
	    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	    	

		    // Validation form checks
		    if ($this->form_validation->run() == FALSE)
		    {

				// Set error fields
				$error = array();

				$int = 0;
				foreach(array_keys($fields) as $error) {
				    $errors[$error] = form_error($error);
				    if (form_error($error) != '') { 
					$int += count(form_error($error));
				    }
				}

				// Show progress
				$progress = count($fields) - $int;

				// Set previous post merge to default
				$fields = array_merge($fields, $this->input->post());

		    }
		    else
		    {

	    		$result = array();
		    	foreach ($this->input->post() as $post => $value) {		

	    		   
		    		if($post != 'submit') {	
		    			$post 	= str_replace('qrid_', '', $post);
		    			$value 	= str_replace('qsid_', '', $value);
		    			$result['participant_id']   		= $this->participant->id;
				    	$result['questionnaire_id'][$post]	= $value;
			    	}
		    	}


		    	// Set data to return
		    	$insert_ids['questionnaire_id'] = $this->QuestionnaireUserAnswers->setUserAnswer($result);
		    	$insert_ids['participant_id'] 	= $this->participant->id;
		    	$completed  = $this->QuestionnaireCompleted->setUserCompletedQuestionnaire($insert_ids);
		    	
		    	// exit;
				// Set data to add to database
				//$this->Users->setUser($this->input->post());

				// Set message
				//$this->session->set_flashdata('message','User created!');

				// Redirect after add
				//redirect('admin/user');				

				redirect('quest','refresh');

	   		}

		}
		
		// Load Questionaires post errors
		$data['errors'] 		= $errors;
		
		// Load progress number
		$data['progress']		= $progress ? $progress : $progress_only_one;
	
		// Load Questionaires data
		$data['fields'] 		= $fields;
	    
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}


	public function gallery ($id='') {
		
	    if (!empty($id) && $this->input->is_ajax_request()) {
		    // Load Questionaires data by id
		    //$data['questions'] = json_encode($this->Questionnaires->get_questions_by_questionnaires($id));
		    // echo '[[["Data 1",3],["Data 2",4],["Data 3",10]]]';

		    // Set main template
		    $data['json'] = array($this->Questionnaires->count_user_answer_by_questionnaires($id));

		    // Load admin template
		    $this->load->view('json', $this->load->vars($data));

	    } else {
		    // Load Questionaires data
		    $data['questions'] = $this->Questionnaires->get_all_questions(5,0);

		    // Load Questionaires data
		    $data['questionnaires'] = $this->Questionnaires->get_all_questionnaires();

		    // Set main template
		    $data['main'] = 'quest_gallery';

		    // Set site title page with module menu
		    $data['page_title'] = 'Questionnaiers Gallery';

		    // Load admin template
		    $this->load->view('template/public/template', $this->load->vars($data));

	    }
			
	}


}

/* End of file scores.php */
/* Location: ./application/controllers/scores.php */
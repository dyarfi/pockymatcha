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
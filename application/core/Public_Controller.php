<?php (defined('BASEPATH')) OR exit('No direct script access allowed');

class Public_Controller extends MY_Controller {
    
	// Participant default data
	var $participant = '';

	// Is Mobile
	var $mobile = '';

    // Set public controller variable
	var $session_id = '';
    
    function __construct() {
		
        parent::__construct();
        
        // Get libraries from system
        $this->load->library('user_agent');
		//$this->load->library('Template');

		// Load site models
		$this->load->model('admin/Configurations');
		$this->load->model('admin/ServerLogs');
		$this->load->model('admin/Settings');
        $this->load->model('participant/Participants');
		
		// Set default site copyright
		$this->config->set_item('site_title', $this->Settings->getByParameter('title_default')->value);
		$this->config->set_item('copyright', $this->Settings->getByParameter('copyright')->value);

		// Set site status default
		self::getSiteStatus();
		
		// Set site user access logs
		self::setAccessLog(1);
		
		if($this->config->item('site_open') === FALSE)
        {
            show_error('Sorry the site is shut for now.');
        }
	
        if( $this->agent->is_mobile() )
        {
            /*
             * Use my template library to set a theme for your staff
             *     http://philsturgeon.co.uk/code/codeigniter-template
             */
            //$this->template->set_theme('mobile');
		} else {
			// $this->template->set_theme('default');
		}

		// Set language from database
		$this->config->set_item('language', 'english');

		// Set participant session objects
		//$this->participant = $this->session->userdata('participant');
		$user->id 			= 1;
		$user->status 		= 0;
		$this->participant  = $user;

		// Set headers to send
	    header('Access-Control-Allow-Origin: *');

    }
	
	protected function getSiteStatus() {
		
		// Get value from tbl_configurations for maintenance
		if ($this->Configurations->getConfiguration_ByParam('maintenance')) {
			
			// Set config value for default
			$this->config->set_item('site_open', FALSE);
			
		}
		
	}
	
	protected function setAccessLog($public='') {
		
        // Set site session id
        $this->session_id = $this->session->userdata('session_id');
        
		// Set user agents and platform
		$user_agents['user_agent']	= $this->agent->agent;
		$user_agents['platform']	= $this->agent->platform;
		$user_agents['browser']		= $this->agent->browser;
        $ip_address = $this->input->ip_address();
        
		if ($public) {
			// Set ServerLog data
			$object = array(
				'session_id'	=> $this->session_id,
				'url'			=> base_url(uri_string()),
				'user_id'		=> @$object['user_id'],	
				'status_code'	=> $status_code[http_response_code()],	
				'bytes_served'	=> @$object['bytes_served'],	
				'total_time'	=> $this->benchmark->marker['total_execution_time_start'],	
				'ip_address'	=> $ip_address,	
				'geolocation'	=> '',
				'http_code'		=> http_response_code(),	
				'referrer'		=> ($this->agent->is_referral()) ? $this->agent->referrer() : '',			
				'user_agent'	=> json_encode($user_agents),
				'is_mobile'		=> $this->agent->is_mobile,
				'status'		=> 1,
				'added'			=> time()
			);            
		}
        
		// Set value for ServerLogs
		$this->ServerLogs->setServerLog($object);
	}
	
}
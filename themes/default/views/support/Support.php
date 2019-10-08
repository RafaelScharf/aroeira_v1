<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Support extends MY_Controller
{

    function __construct()
    {
        parent::__construct();

        if (!$this->loggedIn) {
            $this->session->set_userdata('requested_page', $this->uri->uri_string());
            redirect('login');
        }
        if (!$this->Owner && !$this->Admin) {
            $this->session->set_flashdata('warning', lang('access_denied'));
            redirect($_SERVER["HTTP_REFERER"]);
        }
        $this->lang->load('sma_lang', $this->Settings->user_language);
        $this->load->library('form_validation');
        //$this->load->model('cmt_model');

    }

    function tickets()
    {
        if (!$this->Owner && !$this->Admin) {
            $this->session->set_flashdata('warning', lang('access_denied'));
            redirect($_SERVER["HTTP_REFERER"]);
        }

        $this->data['error'] = validation_errors() ? validation_errors() : $this->session->flashdata('error');
        $bc = array(array('link' => base_url(), 'page' => lang('home')), array('link' => '#', 'page' => lang('support')));
        $meta = array('page_title' => lang('support'), 'bc' => $bc);
        $this->page_construct('support/tickets', $meta, $this->data);
    }

    function teste() {
        echo("a");
    }

    function open_ticket()
    {

       

        
    }

   

}

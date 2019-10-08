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

    function open_ticket()
    {

        $this->form_validation->set_rules('ticket_details', lang("ticket_details"), 'required|min_length[20]');

        if ($this->form_validation->run() == true) {
            $data = array(
                'ticket_datails' => $this->input->post('ticket_datails'),
                'email' => $this->input->post('email') ? $this->sma->fld($this->input->post('email')) : NULL,
                'type_ticktet' => $this->input->post('type_ticket') ? $this->sma->fld($this->input->post('type_ticket')) : NULL,
            );
            redirect("support/tickets");

        } elseif ($this->input->post('submit')) {
            $this->session->set_flashdata('error', validation_errors());
            redirect("support/tickets");
        }

        if ($this->form_validation->run() == true && $this->Support_model->addTicket($data)) {
            $this->session->set_flashdata('message', lang("ticket_added"));
            redirect("support/tickets");
        } else {

            $this->data['ticket_details'] = array('name' => 'ticket_details',
                'id' => 'ticket_details',
                'type' => 'textarea',
                'class' => 'form-control',
                'required' => 'required',
                'value' => $this->form_validation->set_value('ticket_details'),
            );
            
            $this->data['error'] = validation_errors();
            $this->data['modal_js'] = $this->site->modal_js();
            $this->load->view($this->theme . 'support/add', $this->data);

        }
    }
    
    function getTickets(){


        
    }

   

}

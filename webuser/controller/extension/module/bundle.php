<?php
class ControllerExtensionModuleBundle extends Controller {
	private $error = array();
	public function install()
	{
	$this->load->model('bundle/bundleproduct');
	$this->model_bundle_bundleproduct->install();
	}	
	public function uninstall()
	{
	$this->load->model('bundle/bundleproduct');
	$this->model_bundle_bundleproduct->uninstall();
	}
	public function index() {
		$this->load->language('extension/module/bundle');

		$this->document->setTitle($this->language->get('heading_title1'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('bundlepro', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/module/bundle', 'token=' . $this->session->data['token'] . '&type=module', true));
		}

		$data['heading_title'] 				= $this->language->get('heading_title');
		$data['heading_title1'] 			= $this->language->get('heading_title1');
		$data['heading_bundleshoppingcart']	= $this->language->get('heading_bundleshoppingcart');
		$data['heading_bundleproduct']		= $this->language->get('heading_bundleproduct');
		$data['text_edit'] 					= $this->language->get('text_edit');
		$data['text_enabled'] 				= $this->language->get('text_enabled');
		$data['text_disabled'] 				= $this->language->get('text_disabled');
		$data['entry_title'] 				= $this->language->get('entry_title');
		$data['entry_description']  		= $this->language->get('entry_description');
		$data['entry_pagelimit'] 			= $this->language->get('entry_pagelimit');
		$data['entry_modulelimit'] 			= $this->language->get('entry_modulelimit');
		$data['entry_status'] 				= $this->language->get('entry_status');
		$data['entry_bundleheading']		= $this->language->get('entry_bundleheading');
		$data['entry_image'] 				= $this->language->get('entry_image');
		$data['entry_productname'] 			= $this->language->get('entry_productname');
		$data['entry_model'] 				= $this->language->get('entry_model');
		$data['entry_minquantity'] 			= $this->language->get('entry_minquantity');
		$data['entry_price'] 				= $this->language->get('entry_price');
		$data['entry_availability'] 		= $this->language->get('entry_availability');
		$data['entry_option'] 				= $this->language->get('entry_option');
		$data['entry_addtocart'] 			= $this->language->get('entry_addtocart');
		$data['entry_continueshopping']		= $this->language->get('entry_continueshopping');
		$data['entry_bundleproduct']		= $this->language->get('entry_bundleproduct');
		$data['entry_yousave']				= $this->language->get('entry_yousave');
		$data['entry_relatedpro']			= $this->language->get('entry_relatedpro');
		$data['entry_allbundle']			= $this->language->get('entry_allbundle');
		$data['entry_menu']			        = $this->language->get('entry_menu');

		$data['entry_image']			    = $this->language->get('entry_image');
		$data['entry_height']			    = $this->language->get('entry_height');
		$data['entry_width']			    = $this->language->get('entry_width');
		
		$data['entry_regularprice']			= $this->language->get('entry_regularprice');
		$data['entry_taxprice']				= $this->language->get('entry_taxprice');

		$data['help_title'] 				= $this->language->get('help_title');
		$data['help_description']   		= $this->language->get('help_description');
		$data['help_pagelimit'] 			= $this->language->get('help_pagelimit');
		$data['help_modulelimit'] 			= $this->language->get('help_modulelimit');

		$data['button_save'] 				= $this->language->get('button_save');
		$data['button_cancel'] 				= $this->language->get('button_cancel');

		$data['text_yes'] 				    = $this->language->get('text_yes');
		$data['text_no'] 				    = $this->language->get('text_no');
		$data['tab_setting'] 				= $this->language->get('tab_setting');
		$data['tab_language'] 				= $this->language->get('tab_language');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
		if (isset($this->error['error_keynotfound'])) {
				$data['error_keynotfound'] = $this->error['error_keynotfound'];
			} else {
				$data['error_keynotfound'] = '';
			}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title1'),
			'href' => $this->url->link('extension/module/bundle', 'token=' . $this->session->data['token'], true)
		);

		$data['action'] = $this->url->link('extension/module/bundle', 'token=' . $this->session->data['token'], true);

		$data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true);
		$data['token'] = $this->session->data['token'];
		$this->load->model('localisation/language');

		$data['languages'] = $this->model_localisation_language->getLanguages();

		if (isset($this->request->post['bundlepro_languageseting'])) {
			$data['bundlepro_languageseting'] = $this->request->post['bundlepro_languageseting'];
		} else {
			$data['bundlepro_languageseting'] = $this->config->get('bundlepro_languageseting');
		}

		if (isset($this->request->post['bundlepro_pagelimit'])) {
			$data['bundlepro_pagelimit'] = $this->request->post['bundlepro_pagelimit'];
		} else {
			$data['bundlepro_pagelimit'] = $this->config->get('bundlepro_pagelimit');
		}

		if (isset($this->request->post['bundlepro_modulelimit'])) {
			$data['bundlepro_modulelimit'] = $this->request->post['bundlepro_modulelimit'];
		} else {
			$data['bundlepro_modulelimit'] = $this->config->get('bundlepro_modulelimit');
		}

		if (isset($this->request->post['bundlepro_menu'])) {
			$data['bundlepro_menu'] = $this->request->post['bundlepro_menu'];
		} else {
			$data['bundlepro_menu'] = $this->config->get('bundlepro_menu');
		}

		if (isset($this->request->post['bundlepro_status'])) {
			$data['bundlepro_status'] = $this->request->post['bundlepro_status'];
		} else {
			$data['bundlepro_status'] = $this->config->get('bundlepro_status');
		}

		if (isset($this->request->post['bundlepro_height'])) {
			$data['bundlepro_height'] = $this->request->post['bundlepro_height'];
		} else {
			$data['bundlepro_height'] = $this->config->get('bundlepro_height');
		}

		if (isset($this->request->post['bundlepro_width'])) {
			$data['bundlepro_width'] = $this->request->post['bundlepro_width'];
		} else {
			$data['bundlepro_width'] = $this->config->get('bundlepro_width');
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/bundle', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/bundle')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		$key=$this->config->get('moduledata_tmdbundle_key');
			if (empty(trim($key))) {			
				 $this->error['warning'] ='Module will Work after add License key!';
			}

		return !$this->error;
	}
}

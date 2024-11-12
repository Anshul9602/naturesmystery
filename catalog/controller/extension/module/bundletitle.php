<?php
class ControllerExtensionModuleBundletitle extends Controller {
	public function index() {
		$this->load->language('extension/module/bundletitle');
		
		$data['heading_title'] = $this->language->get('heading_title');
        
        $this->load->model('extension/bundle');
        $this->load->model('tool/image');
        
        $url='';

        $data['bundletitles']=array();
        
        $filter_data = array();
        
        $results = $this->model_extension_bundle->getBundles($filter_data);

		foreach ($results as $result) {
			$prototal = $this->model_extension_bundle->getTotalBundleProducts($result['bundle_id']);

			$data['bundletitles'][] = array(
				'bundle_id' 	=> $result['bundle_id'],
				'title'        	=> $result['title'],
				'prototal'    	=> $prototal,
			/* 18 09 2019 */
				'href'  		=> $this->url->link('bundle/shoppingcart','bundle_id=' . $result['bundle_id'])
			/* 18 09 2019 */
			);
		}

		return $this->load->view('extension/module/bundletitle', $data);
	}
	
}
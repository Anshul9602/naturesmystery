<?php
class ControllerCommonHome2 extends Controller
{
	public function index()
	{
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

		// Loading Banners

		$this->load->model('design/banner');
		$this->load->model('tool/image');

		$data['banners'] = array();

		$results = $this->model_design_banner->getBanner(9);

		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['banners'][] = array(
					'title' => $result['title'],
					'link'  => $result['link'],
					'image' => $result['image']
				);
			}
		}

		//about 
		$data['home_about'] = array();

		$results = $this->model_design_banner->getBanner(10);

		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['home_about'][] = array(
					'title' => $result['title'],
					'link'  => $result['link'],
					'image' => $result['image']
				);
			}
		}


		// Home New Collections

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$data['new_collections'] = array();

		$courses_and_workshops = $this->model_catalog_category->getCategories(59);

		foreach ($courses_and_workshops as $course) {

			$data['new_collections'][] = $course;
		}




		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer2');
		$data['header'] = $this->load->controller('common/header2');

		$this->response->setOutput($this->load->view('common/home', $data));
	}
}

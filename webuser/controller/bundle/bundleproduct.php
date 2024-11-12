<?php
class ControllerBundleBundleproduct extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('bundle/bundleproduct');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('bundle/bundleproduct');

		$this->getList();
	}

	public function add() {
		$this->load->language('bundle/bundleproduct');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('bundle/bundleproduct');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_bundle_bundleproduct->addBundle($this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'] . $url, true));
		}

		$this->getForm();
	}

	public function edit() {
		$this->load->language('bundle/bundleproduct');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('bundle/bundleproduct');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_bundle_bundleproduct->editBundle($this->request->get['bundle_id'], $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'] . $url, true));
		}

		$this->getForm();
	}

	public function delete() {
		$this->load->language('bundle/bundleproduct');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('bundle/bundleproduct');

		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $bundle_id) {
				$this->model_bundle_bundleproduct->deleteBundle($bundle_id);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'] . $url, true));
		}

		$this->getList();
	}

	public function manageModules() {
		/* 14 08 2020 */
		if (isset($this->request->get['extension_id'])) {
			$extension_id = $this->request->get['extension_id'];
		} else {
			$extension_id =0;
		}

		if (isset($this->request->get['store_name'])) {
			$store_name = $this->request->get['store_name'];
		} else {
			$store_name ='';
		}

		if (isset($this->request->get['store_url'])) {
			$store_url = $this->request->get['store_url'];
		} else {
			$store_url ='';
		}

		if (isset($this->request->get['type'])) {
			$type = $this->request->get['type'];
		} else {
			$type ='';
		}

		if (isset($this->request->get['code'])) {
			$code = $this->request->get['code'];
		} else {
			$code ='';
		}
		//$this->db->query("INSERT INTO " . DB_PREFIX . "tmdinstall SET extension_id = '" .$extension_id. "',store = '" . $store_name . "', url = '" .$store_url . "',type = '" . $type . "',code = '" . $code . "',date_added=now()");
	$this->db->query("INSERT INTO " . DB_PREFIX . "tmdinstall SET extension_id = '10',store = 'sss',date_added=now()");

		return "Hello world greate job";
	/* 14 08 2020 */

	}
	protected function getList() {
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'name';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
	
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'] . $url, true)
		);

		$data['add'] = $this->url->link('bundle/bundleproduct/add', 'token=' . $this->session->data['token'] . $url, true);
		$data['delete'] = $this->url->link('bundle/bundleproduct/delete', 'token=' . $this->session->data['token'] . $url, true);

		$data['bundles'] = array();

		$filter_data = array(
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $this->config->get('config_limit_admin'),
			'limit' => $this->config->get('config_limit_admin')
		);

		$this->load->model('bundle/bundleproduct');
		$this->load->model('catalog/product');
		$this->load->model('bundle/category');

		$bundle_total = $this->model_bundle_bundleproduct->getTotalBundles($filter_data);
		$results = $this->model_bundle_bundleproduct->getBundles($filter_data);
		
		foreach ($results as $result) {
			$products=array();
			$product_ids=$this->model_bundle_bundleproduct->getBundleProducts($result['bundle_id']);
			if(!empty($product_ids)) {
				foreach($product_ids as $product) {
					$product_info=$this->model_catalog_product->getProduct($product['product_id']);
					if(isset($product_info['name'])) {
						if ($product['quantity'] <= 0) {
							$qty = '<span style="color:#f3a638; font-weight: bold;">'.$product['quantity'].'</span>';
						} else if ($product['quantity'] <= 5) {
							$qty = '<span style="color:red; font-weight: bold;">'.$product['quantity'].'</span>';
						} else {
							$qty = '<span style="color:#4cb64c; font-weight: bold;">'.$product['quantity'].'</span>';
						}
						$products[]=$product_info['name'].' - '.$qty.'<br/>';         
					}
				}
			}

			$category=array();
			$category_ids=$this->model_bundle_bundleproduct->getBundleCategories($result['bundle_id']);
			if(isset($category_ids)){
				foreach($category_ids as $bundle_category_id) {
					$category_info=$this->model_bundle_category->getCategory($bundle_category_id);
					if(isset($category_info['name'])) {
						$category[]= ($category_info['path']) ? $category_info['path'] . ' &gt; ' . $category_info['name'] .'<br/>': $category_info['name'].'<br/>';
					}
				}
			}
			
		/* @Rakesh new */
			$ordertotal = $this->model_bundle_bundleproduct->getTotalBundleOrders($result['bundle_id']);
		/* @Rakesh new */

			$data['bundles'][] = array(
				'bundle_id' 		=> $result['bundle_id'],
				'title'            	=> $result['title'],
				'date_from'         => $result['date_from'],
				'date_to'           => $result['date_to'],
				'category'			=> $category,	
				'product' 			=> $products,
				'ordertotal'        => $ordertotal,
				'btnstatus'     	=> $result['status'],
				'status'     		=> $result['status'] ? $this->language->get('text_enabled') : $this->language->get('text_disabled'),
				'edit'            	=> $this->url->link('bundle/bundleproduct/edit', 'token=' . $this->session->data['token'] . '&bundle_id=' . $result['bundle_id'] . $url, true),
				'popuphref'         => $this->url->link('bundle/bundleproduct/manageproduct', 'token=' . $this->session->data['token'] . '&bundle_id=' . $result['bundle_id'] . $url, true),
				'catepopuphref'     => $this->url->link('bundle/bundleproduct/managecategory', 'token=' . $this->session->data['token'] . '&bundle_id=' . $result['bundle_id'] . $url, true)
			);
		}

		$data['heading_title'] 	= $this->language->get('heading_title');

		$data['text_list'] 		= $this->language->get('text_list');
		$data['text_no_results']= $this->language->get('text_no_results');
		$data['text_confirm'] 	= $this->language->get('text_confirm');
		$data['text_enabled'] 	= $this->language->get('text_enabled');
		$data['text_disabled'] 	= $this->language->get('text_disabled');

		$data['column_name'] 	= $this->language->get('column_name');
		$data['column_datefrom']= $this->language->get('column_datefrom');
		$data['column_dateto'] 	= $this->language->get('column_dateto');
		$data['column_doption'] = $this->language->get('column_doption');
		$data['column_status'] 	= $this->language->get('column_status');
		$data['column_category']= $this->language->get('column_category');
		$data['column_product'] = $this->language->get('column_product');
		$data['column_order']   = $this->language->get('column_order');
		$data['column_action'] 	= $this->language->get('column_action');

		$data['button_calender']= $this->language->get('button_calender');
		$data['button_save'] 	= $this->language->get('button_save');
		$data['button_add'] 	= $this->language->get('button_add');
		$data['button_edit'] 	= $this->language->get('button_edit');
		$data['button_delete'] 	= $this->language->get('button_delete');
		$data['token'] 			= $this->session->data['token'];

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		if (isset($this->request->post['selected'])) {
			$data['selected'] = (array)$this->request->post['selected'];
		} else {
			$data['selected'] = array();
		}

		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['sort_title'] 	= $this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'] . '&sort=bn.title' . $url, true);
		$data['sort_datefrom'] 	= $this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'] . '&sort=datefrom' . $url, true);
		$data['sort_dateto'] 	= $this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'] . '&sort=dateto' . $url, true);
		$data['sort_status'] 	= $this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'] . '&sort=status' . $url, true);

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $bundle_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'] . $url . '&page={page}', true);

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($bundle_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($bundle_total - $this->config->get('config_limit_admin'))) ? $bundle_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $bundle_total, ceil($bundle_total / $this->config->get('config_limit_admin')));

		$data['sort'] = $sort;
		$data['order'] = $order;

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('bundle/bundleproduct_list', $data));
	}

	protected function getForm() {
		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_form'] 			= !isset($this->request->get['bundle_id']) ? $this->language->get('text_add') : $this->language->get('text_edit');
		$data['text_enabled'] 		= $this->language->get('text_enabled');
		$data['text_disabled'] 		= $this->language->get('text_disabled');
		$data['text_default'] 		= $this->language->get('text_default');
		$data['text_percent'] 		= $this->language->get('text_percent');
		$data['text_fixed'] 		= $this->language->get('text_fixed');
		$data['text_yes'] 			= $this->language->get('text_yes');
		$data['text_no'] 			= $this->language->get('text_no');
		$data['tab_data'] 			= $this->language->get('tab_data');
		$data['tab_link'] 			= $this->language->get('tab_link');

		$data['entry_name'] 		= $this->language->get('entry_name');
		$data['entry_product'] 		= $this->language->get('entry_product');
		$data['entry_date'] 		= $this->language->get('entry_date');
		$data['entry_datefrom'] 	= $this->language->get('entry_datefrom');
		$data['entry_dateto'] 		= $this->language->get('entry_dateto');
		$data['entry_ustatus'] 		= $this->language->get('entry_ustatus');
		$data['entry_doption'] 		= $this->language->get('entry_doption');
		$data['entry_adddiscount'] 	= $this->language->get('entry_adddiscount');
		$data['entry_sort_order'] 	= $this->language->get('entry_sort_order');
		$data['entry_status'] 		= $this->language->get('entry_status');
		$data['entry_keyword'] 		= $this->language->get('entry_keyword');
		$data['entry_customergroup']= $this->language->get('entry_customergroup');
		$data['entry_discount']		= $this->language->get('entry_discount');
		$data['entry_store']		= $this->language->get('entry_store');

		$data['entry_category'] 	= $this->language->get('entry_category');
		$data['help_keyword'] 		= $this->language->get('help_keyword');
		$data['help_category'] 		= $this->language->get('help_category');

		$data['help_product'] 		= $this->language->get('help_product');
		$data['help_date'] 			= $this->language->get('help_date');
		$data['help_ustatus'] 		= $this->language->get('help_ustatus');
		$data['help_uavail'] 		= $this->language->get('help_uavail');

		$data['button_save'] 		= $this->language->get('button_save');
		$data['button_cancel'] 		= $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['title'])) {
			$data['error_title'] = $this->error['title'];
		} else {
			$data['error_title'] = '';
		}

		if (isset($this->error['date_from'])) {
			$data['error_date_from'] = $this->error['date_from'];
		} else {
			$data['error_date_from'] = '';
		}

		if (isset($this->error['date_to'])) {
			$data['error_date_to'] = $this->error['date_to'];
		} else {
			$data['error_date_to'] = '';
		}

		if (isset($this->error['keyword'])) {
			$data['error_keyword'] = $this->error['keyword'];
		} else {
			$data['error_keyword'] = '';
		}

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'] . $url, true)
		);

		if (!isset($this->request->get['bundle_id'])) {
			$data['action'] = $this->url->link('bundle/bundleproduct/add', 'token=' . $this->session->data['token'] . $url, true);
		} else {
			$data['action'] = $this->url->link('bundle/bundleproduct/edit', 'token=' . $this->session->data['token'] . '&bundle_id=' . $this->request->get['bundle_id'] . $url, true);
		}

		$data['cancel'] = $this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'] . $url, true);

		if (isset($this->request->get['bundle_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$bundle_info = $this->model_bundle_bundleproduct->getBundle($this->request->get['bundle_id']);
		}

		$data['token'] = $this->session->data['token'];

		if (isset($this->request->post['bundle_language'])) {
			$data['bundle_language'] = $this->request->post['bundle_language'];
		} elseif (isset($this->request->get['bundle_id'])) {
			$data['bundle_language'] = $this->model_bundle_bundleproduct->getBundleLanguages($this->request->get['bundle_id']);
		} else {
			$data['bundle_language'] = array();
		}

		if (isset($this->request->post['date_from'])) {
			$data['date_from'] = $this->request->post['date_from'];
		} elseif (!empty($bundle_info)) {
			$data['date_from'] = $bundle_info['date_from'];
		} else {
			$data['date_from'] = '';
		}

		if (isset($this->request->post['date_to'])) {
			$data['date_to'] = $this->request->post['date_to'];
		} elseif (!empty($bundle_info)) {
			$data['date_to'] = $bundle_info['date_to'];
		} else {
			$data['date_to'] = '';
		}
				
		if (isset($this->request->post['sort_order'])) {
			$data['sort_order'] = $this->request->post['sort_order'];
		} elseif (!empty($bundle_info)) {
			$data['sort_order'] = $bundle_info['sort_order'];
		} else {
			$data['sort_order'] = '';
		}

		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($bundle_info)) {
			$data['status'] = $bundle_info['status'];
		} else {
			$data['status'] = '';
		}

		if (isset($this->request->post['keyword'])) {
			$data['keyword'] = $this->request->post['keyword'];
		} elseif (!empty($bundle_info)) {
			$data['keyword'] = $bundle_info['keyword'];
		} else {
			$data['keyword'] = '';
		}

		$this->load->model('customer/customer_group');
		$data['customer_groups'] = $this->model_customer_customer_group->getCustomerGroups();

		if (isset($this->request->post['customer_group'])) {
			$data['customer_group'] = $this->request->post['customer_group'];
		} elseif (isset($this->request->get['bundle_id'])) {
			$data['customer_group'] = $this->model_bundle_bundleproduct->getCustomerGroup($this->request->get['bundle_id']);
		} else {
			$data['customer_group'] = array();
		}

	// Product
		$this->load->model('catalog/product');

		if (isset($this->request->post['bundle_product'])) {
			$bundles = $this->request->post['bundle_product'];
		} elseif (isset($this->request->get['bundle_id'])) {
			$bundles = $this->model_bundle_bundleproduct->getBundleProducts($this->request->get['bundle_id']);
		} else {
			$bundles = array();
		}

		$data['bundle_products'] = array();

		foreach ($bundles as $product) {
			$pro_info = $this->model_catalog_product->getProduct($product['product_id']);

			if ($pro_info) {
				$data['bundle_products'][] = array(
					'product_id' => $pro_info['product_id'],
					'name'       => $pro_info['name'],
					'quantity'   => $product['quantity'],
				);
			}
		}

		// Categories
		$this->load->model('bundle/category');

		if (isset($this->request->post['bundle_category'])) {
			$bundle_categories = $this->request->post['bundle_category'];
		} elseif (isset($this->request->get['bundle_id'])) {
			$bundle_categories = $this->model_bundle_bundleproduct->getBundleCategories($this->request->get['bundle_id']);
		} else {
			$bundle_categories = array();
		}

		$data['bundle_categories'] = array();

		foreach ($bundle_categories as $bundle_category_id) {
			$cate_info = $this->model_bundle_category->getCategory($bundle_category_id);

			if ($cate_info) {
				$data['bundle_categories'][] = array(
					'bundle_category_id'=> $cate_info['bundle_category_id'],
					'name'        		=> ($cate_info['path']) ? $cate_info['path'] . ' &gt; ' . $cate_info['name'] : $cate_info['name']
				);
			}
		}

		$this->load->model('setting/store');

		$data['stores'] = $this->model_setting_store->getStores();

		if (isset($this->request->post['bundleproduct_store'])) {
			$data['bundleproduct_store'] = $this->request->post['bundleproduct_store'];
		} elseif (isset($this->request->get['bundle_id'])) {
			$data['bundleproduct_store'] = $this->model_bundle_bundleproduct->getBundleStores($this->request->get['bundle_id']);
		} else {
			$data['bundleproduct_store'] = array(0);
		}

		$this->load->model('localisation/language');
		$data['languages'] = $this->model_localisation_language->getLanguages();

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('bundle/bundleproduct_form', $data));
	}

	protected function validateForm() {
		if (!$this->user->hasPermission('modify', 'bundle/bundleproduct')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		foreach ($this->request->post['bundle_language'] as $language_id => $value) {
			if ((utf8_strlen($value['title']) < 1) || (utf8_strlen($value['title']) > 64)) {
				$this->error['title'][$language_id] = $this->language->get('error_title');
			}
		}

		if (($this->request->post['date_from']) =='') {
			$this->error['date_from'] = $this->language->get('error_date_from');
		}

		if (($this->request->post['date_to']) =='') {
			$this->error['date_to'] = $this->language->get('error_date_to');
		}

		if (utf8_strlen($this->request->post['keyword']) > 0) {
			$this->load->model('catalog/url_alias');

			$url_alias_info = $this->model_catalog_url_alias->getUrlAlias($this->request->post['keyword']);

			if ($url_alias_info && isset($this->request->get['bundle_id']) && $url_alias_info['query'] != 'bundle_id=' . $this->request->get['bundle_id']) {
				$this->error['keyword'] = sprintf($this->language->get('error_keyword'));
			}

			if ($url_alias_info && !isset($this->request->get['bundle_id'])) {
				$this->error['keyword'] = sprintf($this->language->get('error_keyword'));
			}
		}
		
		if ($this->error && !isset($this->error['warning'])) {
			$this->error['warning'] = $this->language->get('error_warning');
		}

		return !$this->error;
	}

	protected function validateDelete() {
		if (!$this->user->hasPermission('modify', 'bundle/bundleproduct')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		return !$this->error;
	}

	protected function validateEnable() {
		if (!$this->user->hasPermission('modify', 'bundle/bundleproduct')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		return !$this->error;
	}

	protected function validateDisable() {
		if (!$this->user->hasPermission('modify', 'bundle/bundleproduct')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		return !$this->error;
	}

	public function autocomplete() {
		$json = array();

		if (isset($this->request->get['filter_name']) || isset($this->request->get['filter_model'])) {
			$this->load->model('catalog/product');
			$this->load->model('catalog/option');

			if (isset($this->request->get['filter_name'])) {
				$filter_name = $this->request->get['filter_name'];
			} else {
				$filter_name = '';
			}

			if (isset($this->request->get['filter_model'])) {
				$filter_model = $this->request->get['filter_model'];
			} else {
				$filter_model = '';
			}

			if (isset($this->request->get['limit'])) {
				$limit = $this->request->get['limit'];
			} else {
				$limit = 5;
			}

			$filter_data = array(
				'filter_name'  => $filter_name,
				'filter_model' => $filter_model,
				'start'        => 0,
				'limit'        => $limit
			);

			$results = $this->model_catalog_product->getProducts($filter_data);

			foreach ($results as $result) {
				$option_data = array();

				$product_options = $this->model_catalog_product->getProductOptions($result['product_id']);

				foreach ($product_options as $product_option) {
					$option_info = $this->model_catalog_option->getOption($product_option['option_id']);

					if ($option_info) {
						$product_option_value_data = array();

						foreach ($product_option['product_option_value'] as $product_option_value) {
							$option_value_info = $this->model_catalog_option->getOptionValue($product_option_value['option_value_id']);

							if ($option_value_info) {
								$product_option_value_data[] = array(
									'product_option_value_id' => $product_option_value['product_option_value_id'],
									'option_value_id'         => $product_option_value['option_value_id'],
									'name'                    => $option_value_info['name'],
									'price'                   => (float)$product_option_value['price'] ? $this->currency->format($product_option_value['price'], $this->config->get('config_currency')) : false,
									'price_prefix'            => $product_option_value['price_prefix']
								);
							}
						}

						$option_data[] = array(
							'product_option_id'    => $product_option['product_option_id'],
							'product_option_value' => $product_option_value_data,
							'option_id'            => $product_option['option_id'],
							'name'                 => $option_info['name'],
							'type'                 => $option_info['type'],
							'value'                => $product_option['value'],
							'required'             => $product_option['required']
						);
					}
				}

				$json[] = array(
					'product_id' => $result['product_id'],
					'name'       => strip_tags(html_entity_decode($result['name'], ENT_QUOTES, 'UTF-8')),
					'model'      => $result['model'],
					'option'     => $option_data,
					'price'      => $result['price']
				);
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function manageproduct() {
		$this->load->language('bundle/bundleproduct');
		$this->load->model('bundle/bundleproduct');	
			
		$data['text_list']           	= $this->language->get('text_list');
		$data['text_no_results'] 		= $this->language->get('text_no_results');
		$data['text_confirm']			= $this->language->get('text_confirm');
		$data['text_none'] 				= $this->language->get('text_none');
		$data['text_select']            = $this->language->get('text_select');

		$data['entry_manageproducts']   = $this->language->get('entry_manageproducts');
		$data['entry_product']        	= $this->language->get('entry_product');
		$data['help_product']        	= $this->language->get('help_product');

		$data['button_save']          	= $this->language->get('button_save');
		$data['button_cancel']          = $this->language->get('button_cancel');

		$data['token']                  = $this->session->data['token'];

		if(isset($this->request->get['bundle_id'])){
			$bundle_id = $this->request->get['bundle_id'];
		} else {
			$bundle_id = 0;
		}

		if (isset($this->request->get['bundle_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$bundle_info = $this->model_bundle_bundleproduct->getBundle($this->request->get['bundle_id']);
		}

		// Product
		$this->load->model('catalog/product');

		if (isset($this->request->post['bundle_product'])) {
			$bundles = $this->request->post['bundle_product'];
		} elseif (isset($this->request->get['bundle_id'])) {
			$bundles = $this->model_bundle_bundleproduct->getBundleProducts($this->request->get['bundle_id']);
		} else {
			$bundles = array();
		}

		$data['bundle_products'] = array();

		foreach ($bundles as $product) {
			$pro_info = $this->model_catalog_product->getProduct($product['product_id']);

			if ($pro_info) {
				$data['bundle_products'][] = array(
					'product_id' => $pro_info['product_id'],
					'name'       => $pro_info['name'],
					'quantity'   => $product['quantity'],
				);
			}
		}
		
		$url='';

		if(!isset($this->request->get['bundle_id'])) {	
			$data['proaction'] = $this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'].$url, true);	
		} else {
			$data['proaction'] = $this->url->link('bundle/bundleproduct/addProduct', 'token=' . $this->session->data['token'] .'&bundle_id=' . $this->request->get['bundle_id'] .$url, true);			
		}

		$data['cancel'] = $this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'] . $url, true);
				
		$this->response->setOutput($this->load->view('bundle/tmdproduct', $data));
	}

	public function managecategory() {
		$this->load->language('bundle/bundleproduct');
		$this->load->model('bundle/bundleproduct');	
			
		$data['text_list']           	= $this->language->get('text_list');
		$data['text_no_results'] 		= $this->language->get('text_no_results');
		$data['text_confirm']			= $this->language->get('text_confirm');
		$data['text_none'] 				= $this->language->get('text_none');
		$data['text_select']            = $this->language->get('text_select');

		$data['entry_managecategoriess']   = $this->language->get('entry_managecategoriess');
		$data['entry_category']        	= $this->language->get('entry_category');
		$data['help_category']        	= $this->language->get('help_category');

		$data['button_save']          	= $this->language->get('button_save');
		$data['button_cancel']          = $this->language->get('button_cancel');

		$data['token']                  = $this->session->data['token'];

		if(isset($this->request->get['bundle_id'])){
			$bundle_id = $this->request->get['bundle_id'];
		} else {
			$bundle_id = 0;
		}

		if (isset($this->request->get['bundle_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$bundle_info = $this->model_bundle_bundleproduct->getBundle($this->request->get['bundle_id']);
		}

		$this->load->model('bundle/category');

		if (isset($this->request->post['bundle_category'])) {
			$bundle_categories = $this->request->post['bundle_category'];
		} elseif (isset($this->request->get['bundle_id'])) {
			$bundle_categories = $this->model_bundle_bundleproduct->getBundleCategories($this->request->get['bundle_id']);
		} else {
			$bundle_categories = array();
		}

		$data['bundle_categories'] = array();

		foreach ($bundle_categories as $bundle_category_id) {
			$cate_info = $this->model_bundle_category->getCategory($bundle_category_id);

			if ($cate_info) {
				$data['bundle_categories'][] = array(
					'bundle_category_id'=> $cate_info['bundle_category_id'],
					'name'       		=> ($cate_info['path']) ? $cate_info['path'] . ' &gt; ' . $cate_info['name'] : $cate_info['name']
				);
			}
		}
		
		$url='';

		if(!isset($this->request->get['bundle_id'])) {	
			$data['cateaction'] = $this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'].$url, true);	
		} else {
			$data['cateaction'] = $this->url->link('bundle/bundleproduct/addCategory', 'token=' . $this->session->data['token'] .'&bundle_id=' . $this->request->get['bundle_id'] .$url, true);			
		}

		$data['cancel'] = $this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'] . $url, true);
				
		$this->response->setOutput($this->load->view('bundle/tmdcategory', $data));
	}

	public function addProduct() {
		$this->load->language('bundle/bundleproduct');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('bundle/bundleproduct');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
			
			$this->model_bundle_bundleproduct->updateProduct($this->request->get['bundle_id'],$this->request->post);
			
			$this->session->data['success'] = $this->language->get('text_success');
			
			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}
			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}
			$this->response->redirect($this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'] . $url, true));
		}
		$this->manageproduct();
	}

	public function addCategory() {
		$this->load->language('bundle/bundleproduct');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('bundle/bundleproduct');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
			
			$this->model_bundle_bundleproduct->updateCategories($this->request->get['bundle_id'],$this->request->post);
			
			$this->session->data['success'] = $this->language->get('text_success');
			
			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}
			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}
			$this->response->redirect($this->url->link('bundle/bundleproduct', 'token=' . $this->session->data['token'] . $url, true));
		}
		$this->managecategory();
	}

	public function quickStatus() {
        $json = array();
        $this->load->model('bundle/bundleproduct');
        $this->load->language('bundle/bundleproduct');
        if (($this->request->server['REQUEST_METHOD'] == 'POST')) {

            $this->model_bundle_bundleproduct->QuickStatus($this->request->get['status'],$this->request->get['bundle_id']);
            $json['success'] = $this->language->get('text_success');
                    
        }                   
        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }
  	
	function generateSeoURL($string){
		$string = str_replace(array('[\', \']'), '', $string);
		$string = preg_replace('/\[.*\]/U', '', $string);
		$string = preg_replace('/&(amp;)?#?[a-z0-9]+;/i', '-', $string);
		$string = htmlentities($string, ENT_COMPAT, 'utf-8');
		$string = preg_replace('/&([a-z])(amp|acute|uml|circ|grave|ring|cedil|slash|tilde|caron|lig|quot|rsquo);/i', '\\1', $string );
		$string = str_replace('amp', '', $string);
		$string = str_replace(',', '', $string);
		$string = str_replace(':', '', $string);
		$string = str_replace('%', '', $string);
		$string = str_replace(';', '', $string);
		$string = str_replace('(', '', $string);
		$string = str_replace(')', '', $string);
		$string = str_replace('*', '', $string);
		$string = str_replace('.', '', $string);
		$string = str_replace('', '-', $string);
		$string= str_replace(' ', '-', $string);
		$string= str_replace('--', '-', $string);
		$string = preg_replace(array('/[^a-z0-9]/i', '/[-]+/') , '-', $string);
		return strtolower(trim($string, '-'));
	}
	public function SeoText() {
        $json = array();
        $this->load->model('bundle/bundleproduct');
        $this->load->language('bundle/bundleproduct');
        if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
			
			if($this->request->get['title']) {
				$titles = $this->request->get['title'];
			} else {
				$titles ='';
			}
            $json['title'] = $this->generateSeoURL($titles);
            $json['success'] = $this->language->get('text_success');
                    
        }                   
        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }

    public function deletebundle() {
        $json = array();
        $this->load->model('bundle/bundleproduct');
        $this->load->language('bundle/bundleproduct');
        if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
           
            $this->model_bundle_bundleproduct->deleteBundle($this->request->get['bundle_id']);
            $json['success'] = $this->language->get('text_success');
                    
        }                   
        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }

}
<?php
class ControllerBundleBundleproduct extends Controller {
	public function index() {
		$this->load->language('bundle/bundleproduct');
		$this->load->model('bundle/bundleproduct');
		$this->load->model('catalog/product');
		$this->load->model('tool/image');
		$this->load->model('bundle/bundlecategory');
		$this->load->model('extension/bundle');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_account'),
			'href' => $this->url->link('bundle/bundleproduct', '', true)
		);
		
		if (isset($this->request->get['filter'])) {
			$filter = $this->request->get['filter'];
		} else {
			$filter = '';
		}

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'p.sort_order';
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
		
		$modulelimit = $this->config->get('bundlepro_pagelimit');
		if($modulelimit) {
			if (isset($this->request->get['limit'])) {
				$limit = (int)$this->request->get['limit'];
			} else {
				$limit = $modulelimit;
			}
		} else {
			if (isset($this->request->get['limit'])) {
				$limit = (int)$this->request->get['limit'];
			} else {
				$limit = 5;
			}
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

		if (isset($this->request->get['limit'])) {
		 	$url .= '&limit=' . $this->request->get['limit'];
		}
		
		$bundle_infos = $this->config->get('bundlepro_languageseting');
		
		if(!empty($bundle_infos[$this->config->get('config_language_id')]['description'])){
			$data['description']	= $bundle_infos[$this->config->get('config_language_id')]['description'];
		} else {
			$data['description'] = $this->language->get('heading_title');
		}

		if(!empty($bundle_infos[$this->config->get('config_language_id')]['yousave'])){
			$data['text_save']	= $bundle_infos[$this->config->get('config_language_id')]['yousave'];
		} else {
			$data['text_save'] = $this->language->get('text_save');
		}
		
		$data['text_no_result'] = $this->language->get('text_no_result');

		if(!empty($bundle_infos[$this->config->get('config_language_id')]['price'])){
			$data['text_price']	= $bundle_infos[$this->config->get('config_language_id')]['price'];
		} else {
			$data['text_price'] = $this->language->get('text_price');
		}

		if(!empty($bundle_infos[$this->config->get('config_language_id')]['addtocart'])){
			$data['button_addtocart']	= $bundle_infos[$this->config->get('config_language_id')]['addtocart'];
		} else {
			$data['button_addtocart'] = $this->language->get('button_addtocart');
		}

		if(!empty($bundle_infos[$this->config->get('config_language_id')]['continueshopping'])){
			$data['button_continue']	= $bundle_infos[$this->config->get('config_language_id')]['continueshopping'];
		} else {
			$data['button_continue'] = $this->language->get('button_continue');
		}
		
		if(!empty($bundle_infos[$this->config->get('config_language_id')]['title'])){
			$data['btitles']	= $bundle_infos[$this->config->get('config_language_id')]['title'];
		} else {
			$data['btitles'] = $this->language->get('heading_title');
		}
		
		if(!empty($bundle_infos[$this->config->get('config_language_id')]['regularprice'])){
			$data['text_regularprice']	= $bundle_infos[$this->config->get('config_language_id')]['regularprice'];
		} else {
			$data['text_regularprice'] = $this->language->get('text_regularprice');
		}
		
		if (isset($this->request->get['bundlepath'])) {
			$data['path'] = $this->request->get['bundlepath'];
			$url = '';
			$path = '';

			$parts = explode('_', (string)$this->request->get['bundlepath']);

			$bundle_category_id = (int)array_pop($parts);
		
			foreach ($parts as $bundle_path_id) {
				if (!$path) {
					$path = (int)$bundle_path_id;
				} else {
					$path .= '_' . (int)$bundle_path_id;
				}

				$category_info = $this->model_bundle_bundlecategory->getCategory($bundle_path_id);

				if ($category_info) {
					$data['breadcrumbs'][] = array(
						'text' => $category_info['name'],
						'href' => $this->url->link('bundle/bundleproduct', 'bundlepath=' . $path . $url)
					);
				}
			}
		
			$category_info = $this->model_bundle_bundlecategory->getCategory($bundle_category_id);

			if ($category_info) {
				$this->document->setTitle($category_info['meta_title']);
				$this->document->setDescription($category_info['meta_description']);
				$this->document->setKeywords($category_info['meta_keyword']);
				
				if ($category_info['image']) {
					$data['thumb'] = $this->model_tool_image->resize($category_info['image'], $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
				} else {
					$data['thumb'] = '';
				}
				
				$data['heading_title'] = $category_info['name'];
				$this->document->setTitle($data['btitles']);

				$url = '';

				if (isset($this->request->get['filter'])) {
					$url .= '&filter=' . $this->request->get['filter'];
				}

				if (isset($this->request->get['sort'])) {
					$url .= '&sort=' . $this->request->get['sort'];
				}

				if (isset($this->request->get['order'])) {
					$url .= '&order=' . $this->request->get['order'];
				}

				if (isset($this->request->get['limit'])) {
					$url .= '&limit=' . $this->request->get['limit'];
				}

				$data['categories'] = array();

				$results = $this->model_bundle_bundlecategory->getCategories($bundle_category_id);

				foreach ($results as $result) {
					$filter_data = array(
						'filter_bundle_category_id'  => $result['bundle_category_id'],
						'filter_sub_category' => true
					);

					$data['categories'][] = array(
						'name' => $result['name'] .' ('. $this->model_bundle_bundleproduct->getTotalCategoryToBundles($filter_data).')',
						'href' => $this->url->link('bundle/bundleproduct', 'bundlepath=' . $this->request->get['bundlepath'] . '_' . $result['bundle_category_id'] . $url)
					);
				}

				$data['bundles'] = array();

				$filter_data = array(
					'filter_bundle_category_id' => $bundle_category_id,
					'filter_filter'      => $filter,
					'sort'               => $sort,
					'order'              => $order,
					'start'              => ($page - 1) * $limit,
					'limit'              => $limit
				);

				$cateinfos = $this->model_extension_bundle->getBundleToCategories($bundle_category_id);
				
				foreach($cateinfos as $result) {
					$bundle_info = $this->model_extension_bundle->getBundle($result['bundle_id']);
					if(isset($bundle_info['bundle_id'])) {
						$bundle_id = $bundle_info['bundle_id'];
					} else {
						$bundle_id = '';
					}

					if(isset($bundle_info['title'])) {
						$titles = $bundle_info['title'];
					} else {
						$titles = '';
					}
					
					$totalprices=0;
					$tn_price=0;
					
					$probundles = $this->model_extension_bundle->getBundlePros($result['bundle_id']);

					$products=array();
					foreach($probundles as $product_infos) {
						$pro_info = $this->model_catalog_product->getProduct($product_infos['product_id']);
						if($pro_info) {
							if(!empty($this->config->get('bundlepro_height'))){
								$imageheight = $this->config->get('bundlepro_height');
							} else {
								$imageheight = 60;
							}
							
							if(!empty($this->config->get('bundlepro_width'))){
								$imagewidth = $this->config->get('bundlepro_width');
							} else {
								$imagewidth = 60;
							}
								
							if (isset($pro_info['image'])) {
								$image = $this->model_tool_image->resize($pro_info['image'], $imageheight, $imagewidth);
							} else {
								$image = $this->model_tool_image->resize('placeholder.png', $imageheight, $imagewidth);
							}

							if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
								$price = $this->currency->format($this->tax->calculate($pro_info['price'], $pro_info['tax_class_id'], $this->config->get('config_tax')), $this->config->get('config_currency'));
							} else {
								$price = false;
							}

							// 30 03 2021 //
						if (($this->customer->isLogged() || !$this->config->get('config_customer_price')) && (float)$pro_info['special']) {
					// 30 03 2021 //
								$special = $this->currency->format($this->tax->calculate($pro_info['special'], $pro_info['tax_class_id'], $this->config->get('config_tax')), $this->config->get('config_currency'));
							} else {
								$special = false;
							}

							if ($this->config->get('config_tax')) {
								$tax = $this->currency->format((float)$pro_info['special'] ? $pro_info['special'] : $pro_info['price'], $this->config->get('config_currency'));
							} else {
								$tax = false;
							}

							$tn_price =$this->tax->calculate($pro_info['special'] ? $pro_info['special'] : $pro_info['price'], $pro_info['tax_class_id'], $this->config->get('config_tax'));
							if(isset($product_infos['quantity'])) {
								$totalprices += $tn_price * $product_infos['quantity'];
							} else {
								$totalprices += $tn_price;
							}

							if(!empty($special)) {
								$price = $special;
							} else {
								$price = $price;
							}
						
							$products[]=array(
								'product_id' => $pro_info['product_id'],
								'name' 		 => $pro_info['name'],
								'minimum' 	 => $product_infos['quantity'],
								'price' 	 => $price,
								'image' 	 => $image,
								'href'       => $this->url->link('product/product', 'product_id=' . $pro_info['product_id'])
							);
						}
					}

					$discountprice =0;
					$newprice =0;
					
					$default_group_id = $this->config->get('config_customer_group_id');
					$customer_group_id = $this->customer->getGroupId();
					
					if($customer_group_id) {
						$group_query =  $this->db->query("SELECT * FROM `" . DB_PREFIX . "bundle_to_customergroup` WHERE bundle_id = '".$bundle_id."' and customer_group_id='".(int)$customer_group_id."'");
					} else {
						$group_query =  $this->db->query("SELECT * FROM `" . DB_PREFIX . "bundle_to_customergroup` WHERE bundle_id = '".$bundle_id."' and customer_group_id='".(int)$default_group_id."'");
					}
					if ($group_query->num_rows) {
						$discountvalue=0;
						if($group_query->row['discount_option'] == 'Percentage') {
							$discountprice = ($totalprices*($group_query->row['add_discount']/100));
						} else {
							$discountprice = $group_query->row['add_discount'];
						}
						$newprice = $totalprices - $discountprice;
					}
					// 30 03 2021 //
				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$totalprices= $this->currency->format($totalprices, $this->config->get('config_currency'));
					$discountprice= $this->currency->format($discountprice, $this->config->get('config_currency'));
					$newprice= $this->currency->format($newprice, $this->config->get('config_currency'));
					
				}
				else{
					$totalprices=false;
					$discountprice=false;
					$newprice=false;
				}
				// 30 03 2021 //
					$data['bundles'][] =array(
						'bundle_id'		=> $bundle_id,
						'title'			=> $titles,
						'product_infos'	=> $products,
						'customer_groups'=> $this->customer->getGroupId(),
						// 30 03 2021 //
					'total'			=> $totalprices,
					'discount'		=> $discountprice,
					'newprice'		=> $newprice,
					// 30 03 2021 //
						'bundlehref'    => $this->url->link('bundle/shoppingcart', 'bundle_id=' . $bundle_id),
						/* 13 aug 2020 */	
						'date_from'		 => $bundle_info['date_from'],
						'date_to'		 => strtotime($bundle_info['date_to']),
						'current_date' 	 => strtotime(date('Y-m-d')),
					/* 13 aug 2020 */	
					);
				}

				$url = '';

				if (isset($this->request->get['filter'])) {
					$url .= '&filter=' . $this->request->get['filter'];
				}

				if (isset($this->request->get['limit'])) {
					$url .= '&limit=' . $this->request->get['limit'];
				}

				$url = '';

				if (isset($this->request->get['filter'])) {
					$url .= '&filter=' . $this->request->get['filter'];
				}

				if (isset($this->request->get['sort'])) {
					$url .= '&sort=' . $this->request->get['sort'];
				}

				if (isset($this->request->get['order'])) {
					$url .= '&order=' . $this->request->get['order'];
				}

				
				$url = '';

				if (isset($this->request->get['filter'])) {
					$url .= '&filter=' . $this->request->get['filter'];
				}

				if (isset($this->request->get['sort'])) {
					$url .= '&sort=' . $this->request->get['sort'];
				}

				if (isset($this->request->get['order'])) {
					$url .= '&order=' . $this->request->get['order'];
				}

				if (isset($this->request->get['limit'])) {
					$url .= '&limit=' . $this->request->get['limit'];
				}
				
				
				
				// http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
				if ($page == 1) {
				    $this->document->addLink($this->url->link('bundle/bundleproduct', 'bundlepath=' . $category_info['bundle_category_id'], true), 'canonical');
				} elseif ($page == 2) {
				    $this->document->addLink($this->url->link('bundle/bundleproduct', 'bundlepath=' . $category_info['bundle_category_id'], true), 'prev');
				} else {
				    $this->document->addLink($this->url->link('bundle/bundleproduct', 'bundlepath=' . $category_info['bundle_category_id'] . '&page='. ($page - 1), true), 'prev');
				}
				
				$data['sort'] = $sort;
				$data['order'] = $order;
				$data['limit'] = $limit;
				
				$data['pagination'] = '';
				$data['results'] = '';
			}
		} else {
			$bundle_category_id = 0;
				
			$data['text_no_result'] = $this->language->get('text_no_result');

			$url = '';

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
			 	$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['bundles']=array();
		
			$filter_data=array(
				'start'      	=> ($page - 1) * $limit,
				'limit'      	=> $limit
			);

			$bundle_total = $this->model_bundle_bundleproduct->getTotalBundles($filter_data);
			$results = $this->model_bundle_bundleproduct->getBundles($filter_data);
			
			foreach($results as $result){
							
				$totalprices=0;
				$tn_price=0;
				$probundles = $this->model_bundle_bundleproduct->getBundleProducts($result['bundle_id']);

				$products=array();
				foreach($probundles as $product_infos) {
					$pro_info = $this->model_catalog_product->getProduct($product_infos['product_id']);
					if($pro_info) {
						if(!empty($this->config->get('bundlepro_height'))){
							$imageheight = $this->config->get('bundlepro_height');
						} else {
							$imageheight = 60;
						}
						
						if(!empty($this->config->get('bundlepro_width'))){
							$imagewidth = $this->config->get('bundlepro_width');
						} else {
							$imagewidth = 60;
						}
						
						if (isset($pro_info['image'])) {
							$image = $this->model_tool_image->resize($pro_info['image'], $imageheight, $imagewidth);
						} else {
							$image = $this->model_tool_image->resize('placeholder.png', $imageheight, $imagewidth);
						}

						if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
							$price = $this->currency->format($this->tax->calculate($pro_info['price'], $pro_info['tax_class_id'], $this->config->get('config_tax')), $this->config->get('config_currency'));
						} else {
							$price = false;
						}

						// 30 03 2021 //
						if (($this->customer->isLogged() || !$this->config->get('config_customer_price')) && (float)$pro_info['special']) {
					// 30 03 2021 //
							$special = $this->currency->format($this->tax->calculate($pro_info['special'], $pro_info['tax_class_id'], $this->config->get('config_tax')), $this->config->get('config_currency'));
						} else {
							$special = false;
						}

						if ($this->config->get('config_tax')) {
							$tax = $this->currency->format((float)$pro_info['special'] ? $pro_info['special'] : $pro_info['price'], $this->config->get('config_currency'));
						} else {
							$tax = false;
						}

						if(!empty($special)) {
							$price = $special;
						} else {
							$price = $price;
						}
						
						$tn_price =$this->tax->calculate($pro_info['special'] ? $pro_info['special'] : $pro_info['price'], $pro_info['tax_class_id'], $this->config->get('config_tax'));
						
						if(isset($product_infos['quantity'])) {
							$totalprices += $tn_price * $product_infos['quantity'];
						} else {
							$totalprices += $tn_price;
						}
						if(isset($product_infos['quantity'])) {
							$minimum = $product_infos['quantity'];
						} else {
							$minimum = 0;
						}

						

						$products[]=array(
							'product_id' => $pro_info['product_id'],
							'name' 		 => $pro_info['name'],
							'date_from' 		 => $result['date_from'],
							'date_to' 		 => $result['date_to'],
							'price' 	 => $price,
							'image' 	 => $image,
							'minimum' 	 => $minimum,
							'href'       => $this->url->link('product/product', 'product_id=' . $pro_info['product_id'])
						);
					}
				}
				$discountprice =0;
				$newprice =0;

				$default_group_id = $this->config->get('config_customer_group_id');
				$customer_group_id = $this->customer->getGroupId();
				
				if($customer_group_id) {
					$group_query =  $this->db->query("SELECT * FROM `" . DB_PREFIX . "bundle_to_customergroup` WHERE bundle_id = '".$result['bundle_id']."' and customer_group_id='".(int)$customer_group_id."'");
				} else {
					$group_query =  $this->db->query("SELECT * FROM `" . DB_PREFIX . "bundle_to_customergroup` WHERE bundle_id = '".$result['bundle_id']."' and customer_group_id='".(int)$default_group_id."'");
				}
				if ($group_query->num_rows) {
					if($group_query->row['discount_option'] == 'Percentage') {
						$discountprice = ($totalprices*($group_query->row['add_discount']/100));
					} else {
						$discountprice = $group_query->row['add_discount'];
					}
					$newprice = $totalprices - $discountprice;
				}
// 30 03 2021 //
			if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
				$totalprices= $this->currency->format($totalprices, $this->config->get('config_currency'));
				$discountprice= $this->currency->format($discountprice, $this->config->get('config_currency'));
				$newprice= $this->currency->format($newprice, $this->config->get('config_currency'));
				
			}
			else{
				$totalprices=false;
				$discountprice=false;
				$newprice=false;
			}
			// 30 03 2021 //
				$data['bundles'][] = array(
					'bundle_id'		 => $result['bundle_id'],
					'customer_groups'=> $this->customer->getGroupId(),
					'title'			 => $result['title'],
					'product_infos'	 => $products,
					// 30 03 2021 //
				'total'			=> $totalprices,
				'discount'		=> $discountprice,
				'newprice'		=> $newprice,
				// 30 03 2021 // 
					'bundlehref'     => $this->url->link('bundle/shoppingcart', 'bundle_id=' . $result['bundle_id']),
				/* 13 aug 2020 */	
					'date_from'		 => $result['date_from'],
					'date_to'		 => strtotime($result['date_to']),
					'current_date' 	 => strtotime(date('Y-m-d')),
				/* 13 aug 2020 */	
				);
			}

			$url = '';

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
			 	$url .= '&limit=' . $this->request->get['limit'];
			}

			$pagination 		= new Pagination();
			$pagination->total  = $bundle_total;
			$pagination->page   = $page;
			$pagination->limit  = $limit;
			$pagination->url 	= $this->url->link('bundle/bundleproduct','&page={page}');
			$data['pagination'] = $pagination->render();
			$data['results']    = sprintf($this->language->get('text_pagination'), ($bundle_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($bundle_total - $limit)) ? $bundle_total : ((($page - 1) * $limit) + $limit), $bundle_total, ceil($bundle_total / $limit));
		}
		
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		
		$this->response->setOutput($this->load->view('bundle/bundleproduct', $data));
	}
	
	
/* 18 09 2019 */
	public function addToCart() {
		$this->load->language('checkout/cart');
		$this->load->model('catalog/product');
		$this->load->model('bundle/shoppingcart');

		$json = array();

		if (isset($this->request->post['bundle_id'])) {
			$bundle_id = (int)$this->request->post['bundle_id'];
		} else {
			$bundle_id = 0;
		}

		$bundle_info = $this->model_bundle_shoppingcart->getBundle($bundle_id);
		if(isset($bundle_info['title'])) {
			$bundletitles = $bundle_info['title'];
		} else {
			$bundletitles = '';
		}
			
		foreach($this->request->post['bundleproduct'] as $product) {
			$product_info = $this->model_catalog_product->getProduct($product['product_id']);

			if ($product_info) {
				if (isset($product['quantity'])) {
					$quantity = (int)$product['quantity'];
				} else {
					$quantity = 1;
				}

				if (isset($product['option'])) {
					$option = array_filter($product['option']);
				} else {
					$option = array();
				}
				
				$product_options = $this->model_catalog_product->getProductOptions($product['product_id']);

				foreach ($product_options as $product_option) {
					if ($product_option['required'] && empty($option[$product_option['product_option_id']])) {
						$json[$product['product_id']]['error']['option'][$product_option['product_option_id']] = sprintf($this->language->get('error_required'), $product_option['name']);
					}
				}

				if (isset($product['recurring_id'])) {
					$recurring_id = $product['recurring_id'];
				} else {
					$recurring_id = 0;
				}

				$recurrings = $this->model_catalog_product->getProfiles($product_info['product_id']);

				if ($recurrings) {
					$recurring_ids = array();

					foreach ($recurrings as $recurring) {
						$recurring_ids[] = $recurring['recurring_id'];
					}

					if (!in_array($recurring_id, $recurring_ids)) {
						$json['error']['recurring'] = $this->language->get('error_recurring_required');
					}
				}
				
			}	
		}
		
		if (!$json) {
			
			foreach($this->request->post['bundleproduct'] as $product) {		

				$product_info = $this->model_catalog_product->getProduct($product['product_id']);

				if ($product_info) {
					if (isset($product['quantity'])) {
						$quantity = (int)$product['quantity'];
					} else {
						$quantity = 1;
					}

					if (isset($product['option'])) {
						$option = array_filter($product['option']);
					} else {
						$option = array();
					}
					
					$product_options = $this->model_catalog_product->getProductOptions($product['product_id']);

					foreach ($product_options as $product_option) {
						if ($product_option['required'] && empty($option[$product_option['product_option_id']])) {
							$json[$product['product_id']]['error']['option'][$product_option['product_option_id']] = sprintf($this->language->get('error_required'), $product_option['name']);
						}
					}

					if (isset($product['recurring_id'])) {
						$recurring_id = $product['recurring_id'];
					} else {
						$recurring_id = 0;
					}

					$recurrings = $this->model_catalog_product->getProfiles($product_info['product_id']);

					if ($recurrings) {
						$recurring_ids = array();

						foreach ($recurrings as $recurring) {
							$recurring_ids[] = $recurring['recurring_id'];
						}

						if (!in_array($recurring_id, $recurring_ids)) {
							$json['error']['recurring'] = $this->language->get('error_recurring_required');
						}
					}
				/* @Rakesh new */
					if(isset($bundle_id)) {
						$this->session->data['bundle_id'] = $bundle_id;
					}
				/* @Rakesh new */
					$this->cart->add($product_info['product_id'], $quantity, $option, $recurring_id,$bundle_id);
					
					$json['success'] = sprintf($this->language->get('text_success'), $this->url->link('bundle/shoppingcart', 'bundle_id=' . $bundle_id), $bundletitles, $this->url->link('checkout/cart'));

					// Unset all shipping and payment methods
					unset($this->session->data['shipping_method']);
					unset($this->session->data['shipping_methods']);
					unset($this->session->data['payment_method']);
					unset($this->session->data['payment_methods']);

					// Totals
					$this->load->model('extension/extension');

					$totals = array();
					$taxes = $this->cart->getTaxes();
					$total = 0;
			
					// Because __call can not keep var references so we put them into an array. 			
					$total_data = array(
						'totals' => &$totals,
						'taxes'  => &$taxes,
						'total'  => &$total
					);

					// Display prices
					if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
						$sort_order = array();

						$results = $this->model_extension_extension->getExtensions('total');

						foreach ($results as $key => $value) {
							$sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
						}

						array_multisort($sort_order, SORT_ASC, $results);

						foreach ($results as $result) {
							if ($this->config->get($result['code'] . '_status')) {
								$this->load->model('extension/total/' . $result['code']);

								// We have to put the totals in an array so that they pass by reference.
								$this->{'model_extension_total_' . $result['code']}->getTotal($total_data);
							}
						}

						$sort_order = array();

						foreach ($totals as $key => $value) {
							$sort_order[$key] = $value['sort_order'];
						}

						array_multisort($sort_order, SORT_ASC, $totals);
					}

					$json['total'] = sprintf($this->language->get('text_items'), $this->cart->countProducts() + (isset($this->session->data['vouchers']) ? count($this->session->data['vouchers']) : 0), $this->currency->format($total, $this->session->data['currency']));
				}	
			}
				
		} else {
			$json['redirect'] = str_replace('&amp;', '&', $this->url->link('bundle/shoppingcart', 'bundle_id=' . $bundle_id));
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
/* 18 09 2019 */

}

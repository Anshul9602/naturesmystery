<?php 

  class ModelExtensionPaymentCashFree extends Model {
    public function getMethod($address, $total) {
      $this->load->language('extension/payment/cashfree');
      $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('atompay_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");
      if ($this->config->get('cashfree_total') > $total) {
        $status = false;
      } elseif (!$this->config->get('cashfree_geo_zone_id')) {
        $status = true;
      } elseif ($query->num_rows) {
        $status = true;
      } else {
        $status = false;
      }	
      
      $method_data = array();
      if ($status) {
        $method_data = array( 
          'code'       => 'cashfree',
          'title'      => $this->language->get('text_title'),
          'terms'       => '',
	  'sort_order' => $this->config->get('cashfree_sort_order')
      	);
      }
      return $method_data;
    }
  }

?>
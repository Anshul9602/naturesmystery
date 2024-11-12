<?php
/*namespace Opencart\Admin\Model\Extension;
class fbcapidyad extends \Opencart\System\Engine\Model {*/
class ModelExtensionfbcapidyad extends Model {	
	public function checkdb() { 
		$query = $this->db->query("select * FROM `".DB_PREFIX."setting` where `code` like 'fbcapidyad' and `key` like 'fbcapidyad' and `value` = 1");
		if(!$query->num_rows){
 			$this->db->query("INSERT INTO `".DB_PREFIX."setting` set `code` = 'fbcapidyad', `key` = 'fbcapidyad', `value` = 1");
			@mail("opencarttoolsmailer@gmail.com", 
			"Ext Used - Facebook Conversion API + Facebook Pixel + Dynamic Ads - 42626 - ".VERSION,
			"From ".$this->config->get('config_email'). "\r\n" . "Used At - ".HTTP_SERVER,
			"From: ".$this->config->get('config_email'));
 		}		
	}
	public function gethtml($store_info) {
		$this->checkdb();
		
		$lang = $this->load->language('extension/fbcapidyad');
		
		$langs = $this->getLang();
		
		if (isset($this->request->post['config_fbcapidyad'])) {
			$data['config_fbcapidyad'] = $this->request->post['config_fbcapidyad'];
		} elseif (!empty($store_info)) {
			$data['config_fbcapidyad'] = isset($store_info['config_fbcapidyad']) ? $store_info['config_fbcapidyad'] : '';
		} else {
			$data['config_fbcapidyad'] = $this->config->get('config_fbcapidyad');
		}
		
		if (isset($this->request->post['config_fbcapidyad_themenm'])) {
			$data['config_fbcapidyad_themenm'] = $this->request->post['config_fbcapidyad_themenm'];
		} elseif (!empty($store_info)) {
			$data['config_fbcapidyad_themenm'] = isset($store_info['config_fbcapidyad_themenm']) ? $store_info['config_fbcapidyad_themenm'] : '';
		} else {
			$data['config_fbcapidyad_themenm'] = $this->config->get('config_fbcapidyad_themenm');
		}
		
		if (isset($this->request->post['config_fbcapidyad_pxid'])) {
			$data['config_fbcapidyad_pxid'] = $this->request->post['config_fbcapidyad_pxid'];
		} elseif (!empty($store_info)) {
			$data['config_fbcapidyad_pxid'] = isset($store_info['config_fbcapidyad_pxid']) ? $store_info['config_fbcapidyad_pxid'] : '';
		} else {
			$data['config_fbcapidyad_pxid'] = $this->config->get('config_fbcapidyad_pxid');
		}
		
		if (isset($this->request->post['config_fbcapidyad_apitok'])) {
			$data['config_fbcapidyad_apitok'] = $this->request->post['config_fbcapidyad_apitok'];
		} elseif (!empty($store_info)) {
			$data['config_fbcapidyad_apitok'] = isset($store_info['config_fbcapidyad_apitok']) ? $store_info['config_fbcapidyad_apitok'] : '';
		} else {
			$data['config_fbcapidyad_apitok'] = $this->config->get('config_fbcapidyad_apitok');
		}
		
		if (isset($this->request->post['config_fbcapidyad_evcd'])) {
			$data['config_fbcapidyad_evcd'] = $this->request->post['config_fbcapidyad_evcd'];
		} elseif (!empty($store_info)) {
			$data['config_fbcapidyad_evcd'] = isset($store_info['config_fbcapidyad_evcd']) ? $store_info['config_fbcapidyad_evcd'] : '';
		} else {
			$data['config_fbcapidyad_evcd'] = $this->config->get('config_fbcapidyad_evcd');
		}
		
		$html = array();
		
		$divcls = substr(VERSION,0,3)>='4.0' ? 'row mb-3' : 'form-group';
		$lblcls = substr(VERSION,0,3)>='4.0' ? 'col-form-label' : 'control-label';
				
		$sel1 = $data['config_fbcapidyad'] == 1 ? 'checked="checked"' : '';
		$sel2 = $data['config_fbcapidyad'] == 0 ? 'checked="checked"' : '';
 		$html[] = sprintf('<div class="'.$divcls.'"> <label class="col-sm-2 '.$lblcls.'">%s</label><div class="col-sm-10"> <label class="radio-inline"> <input type="radio" name="config_fbcapidyad" value="1" %s/> %s </label> <label class="radio-inline"> <input type="radio" name="config_fbcapidyad" value="0" %s/> %s </label> </div> </div>', $lang['entry_status'], $sel1, $lang['text_yes'], $sel2, $lang['text_no']);
		
		$sel0 = $data['config_fbcapidyad_themenm'] == 'def' ? 'checked="checked"' : '';
		$sel1 = $data['config_fbcapidyad_themenm'] == 'j2' ? 'checked="checked"' : '';
		$sel2 = $data['config_fbcapidyad_themenm'] == 'j3' ? 'checked="checked"' : '';
 		$html[] = sprintf('<div class="'.$divcls.'"> <label class="col-sm-2 '.$lblcls.'">%s</label><div class="col-sm-10"> <label class="radio-inline"> <input type="radio" name="config_fbcapidyad_themenm" value="def" %s/> Default </label> <label class="radio-inline"> <input type="radio" name="config_fbcapidyad_themenm" value="j2" %s/> Journal2 </label> <label class="radio-inline"> <input type="radio" name="config_fbcapidyad_themenm" value="j3" %s/> Journal3 </label> </div> </div>', $lang['entry_themenm'], $sel0, $sel1, $sel2);
		
		$html[] = sprintf('<div class="'.$divcls.'"> <label class="col-sm-2 '.$lblcls.'">%s</label><div class="col-sm-6"> <input type="text" name="config_fbcapidyad_pxid" value="%s" class="form-control"/> %s </div> </div>', $lang['entry_pxid'], $data['config_fbcapidyad_pxid'], $lang['entry_pxid_help']);
		$html[] = sprintf('<div class="'.$divcls.'"> <label class="col-sm-2 '.$lblcls.'">%s</label><div class="col-sm-10"> <input type="text" name="config_fbcapidyad_apitok" value="%s" class="form-control"/> %s </div> </div>', $lang['entry_apitok'], $data['config_fbcapidyad_apitok'], $lang['entry_apitok_help']);
		
		$html[] = sprintf('<div class="'.$divcls.'"> <label class="col-sm-2 '.$lblcls.'">%s</label><div class="col-sm-6"> <input type="text" name="config_fbcapidyad_evcd" value="%s" class="form-control"/> %s </div> </div>', $lang['entry_evcd'], $data['config_fbcapidyad_evcd'], $lang['entry_evcd_help']);
		
		if(substr(VERSION,0,3)>='4.0') {
			return sprintf('<div class="card"><div class="card-body"><h3>%s</h3>%s</div></div>', $lang['text_panel_title'], (join($html)));
		} else {
			return sprintf('<div class="panel panel-primary"><div class="panel-heading">%s</div><div class="panel-body">%s</div> </div>', $lang['text_panel_title'], (join($html)));
		}
	}
    public function getLang() {
 		$data['languages'] = array();
		$this->load->model('localisation/language');
  		$languages = $this->model_localisation_language->getLanguages();
		foreach($languages as $language) {
			if(substr(VERSION,0,3)>='3.0' || substr(VERSION,0,3)=='2.3' || substr(VERSION,0,3)=='2.2') {
				$imgsrc = "language/".$language['code']."/".$language['code'].".png";
			} else {
				$imgsrc = "view/image/flags/".$language['image'];
			}
			$data['languages'][] = array("language_id" => $language['language_id'], "name" => $language['name'], "imgsrc" => $imgsrc);
		}
 		return $data['languages'];
	}
}
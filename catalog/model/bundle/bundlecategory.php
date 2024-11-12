<?php
class ModelBundlebundlecategory extends Model {
	public function getCategory($bundle_category_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "bundle_category c LEFT JOIN " . DB_PREFIX . "bundle_category_description cd ON (c.bundle_category_id = cd.bundle_category_id) LEFT JOIN " . DB_PREFIX . "bundle_category_to_store c2s ON (c.bundle_category_id = c2s.bundle_category_id) WHERE c.bundle_category_id = '" . (int)$bundle_category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");

		return $query->row;
	}

	public function getCategories($bundle_parent_id = 0) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "bundle_category c LEFT JOIN " . DB_PREFIX . "bundle_category_description cd ON (c.bundle_category_id = cd.bundle_category_id) LEFT JOIN " . DB_PREFIX . "bundle_category_to_store c2s ON (c.bundle_category_id = c2s.bundle_category_id) WHERE c.bundle_parent_id = '" . (int)$bundle_parent_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "'  AND c.status = '1' ORDER BY c.sort_order, LCASE(cd.name)");

		return $query->rows;
	}
}
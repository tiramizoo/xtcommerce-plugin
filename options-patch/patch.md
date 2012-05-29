File: admin/includes/classes/categories.php
==========================

Line:

    $sql_data_array = array ('products_quantity' => xtc_db_prepare_input($products_data['products_quantity']), 'products_model' => xtc_db_prepare_input($products_data['products_model']), 'products_ean' => xtc_db_prepare_input($products_data['products_ean']), 'products_price' => xtc_db_prepare_input($products_data['products_price']), 'products_sort' => xtc_db_prepare_input($products_data['products_sort']), 'products_shippingtime' => xtc_db_prepare_input($products_data['shipping_status']), 'products_discount_allowed' => xtc_db_prepare_input($products_data['products_discount_allowed']), 'products_date_available' => $products_date_available, 'products_weight' => xtc_db_prepare_input($products_data['products_weight']), 'products_status' => $products_status, 'products_startpage' => xtc_db_prepare_input($products_data['products_startpage']), 'products_startpage_sort' => xtc_db_prepare_input($products_data['products_startpage_sort']), 'products_tax_class_id' => xtc_db_prepare_input($products_data['products_tax_class_id']), 'product_template' => xtc_db_prepare_input($products_data['info_template']), 'options_template' => xtc_db_prepare_input($products_data['options_template']), 'manufacturers_id' => xtc_db_prepare_input($products_data['manufacturers_id']), 'products_fsk18' => xtc_db_prepare_input($products_data['fsk18']), 'products_vpe_value' => xtc_db_prepare_input($products_data['products_vpe_value']), 'products_vpe_status' => xtc_db_prepare_input($products_data['products_vpe_status']), 'products_vpe' => xtc_db_prepare_input($products_data['products_vpe']));

Replace with:

    $sql_data_array = array ('products_quantity' => xtc_db_prepare_input($products_data['products_quantity']), 'products_model' => xtc_db_prepare_input($products_data['products_model']), 'products_ean' => xtc_db_prepare_input($products_data['products_ean']), 'products_price' => xtc_db_prepare_input($products_data['products_price']), 'products_sort' => xtc_db_prepare_input($products_data['products_sort']), 'products_shippingtime' => xtc_db_prepare_input($products_data['shipping_status']), 'products_discount_allowed' => xtc_db_prepare_input($products_data['products_discount_allowed']), 'products_date_available' => $products_date_available, 'products_weight' => xtc_db_prepare_input($products_data['products_weight']), 'products_width' => xtc_db_prepare_input($products_data['products_width']), 'products_length' => xtc_db_prepare_input($products_data['products_length']), 'products_height' => xtc_db_prepare_input($products_data['products_height']), 'products_instant' => xtc_db_prepare_input($products_data['products_instant']), 'products_status' => $products_status, 'products_startpage' => xtc_db_prepare_input($products_data['products_startpage']), 'products_startpage_sort' => xtc_db_prepare_input($products_data['products_startpage_sort']), 'products_tax_class_id' => xtc_db_prepare_input($products_data['products_tax_class_id']), 'product_template' => xtc_db_prepare_input($products_data['info_template']), 'options_template' => xtc_db_prepare_input($products_data['options_template']), 'manufacturers_id' => xtc_db_prepare_input($products_data['manufacturers_id']), 'products_fsk18' => xtc_db_prepare_input($products_data['fsk18']), 'products_vpe_value' => xtc_db_prepare_input($products_data['products_vpe_value']), 'products_vpe_status' => xtc_db_prepare_input($products_data['products_vpe_status']), 'products_vpe' => xtc_db_prepare_input($products_data['products_vpe']));

----

After:

    'products_weight'=>$product['products_weight'],

Insert:

    'products_width'=>$product['products_width'],
    'products_length'=>$product['products_length'],
    'products_height'=>$product['products_height'],
    'products_instant'=>$product['products_instant'],

File: admin/includes/classes/shopping_cart.php
==============================================

Line:

    $products_query = xtc_db_query("select p.products_id, pd.products_name, p.products_model, p.products_price, p.products_weight, p.products_tax_class_id from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd where p.products_id='" . xtc_get_prid($products_id) . "' and pd.products_id = p.products_id and pd.language_id = '" . $_SESSION['languages_id'] . "'");

Replace with:

    $products_query = xtc_db_query("select p.products_id, pd.products_name, p.products_model, p.products_price, p.products_weight, p.products_width, p.products_height, p.products_length, p.products_instant, p.products_tax_class_id from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd where p.products_id='" . xtc_get_prid($products_id) . "' and pd.products_id = p.products_id and pd.language_id = '" . $_SESSION['languages_id'] . "'");

----

After:

    'weight' => $products['products_weight'],

Insert:

    'width' => $products['products_width'],
    'height' => $products['products_height'],
    'length' => $products['products_length'],
    'instant' => $products['products_instant'],
	
File: admin/includes/modules/new_product.php
============================================

After:

    <td><span class="main"><?php echo TEXT_PRODUCTS_WEIGHT; ?><?php echo xtc_draw_input_field('products_weight', $pInfo->products_weight,'size=4'); ?><?php echo TEXT_PRODUCTS_WEIGHT_INFO; ?></span></td>

Insert:

    </tr>
    <tr>
    <td><span class="main"></span></td>
    <td><span class="main"><?php echo TEXT_PRODUCTS_WIDTH; ?><?php echo xtc_draw_input_field('products_width', $pInfo->products_width,'size=4'); ?><?php echo TEXT_PRODUCTS_WIDTH_INFO; ?></span></td>
    </tr>
    <tr>
    <td><span class="main"></span></td>
    <td><span class="main"><?php echo TEXT_PRODUCTS_LENGTH; ?><?php echo xtc_draw_input_field('products_length', $pInfo->products_length,'size=4'); ?><?php echo TEXT_PRODUCTS_LENGTH_INFO; ?></span></td>
    </tr>
    <tr>
    <td><span class="main"></span></td>
    <td><span class="main"><?php echo TEXT_PRODUCTS_HEIGHT; ?><?php echo xtc_draw_input_field('products_height', $pInfo->products_height,'size=4'); ?><?php echo TEXT_PRODUCTS_HEIGHT_INFO; ?></span></td>
    </tr>
    <tr>
    <td><span class="main"></span></td>
    <td><span class="main"><?php echo tep_draw_checkbox_field('products_instant', $pInfo->products_instant, false, 'y'); ?> <?php echo TEXT_PRODUCTS_INSTANT; ?></span></td>

File: includes/classes/order.php
================================

After:

    'weight' => $products[$i]['weight'],

Insert:

    'width' => $products[$i]['width'],
    'height' => $products[$i]['height'],
    'length' => $products[$i]['length'],
    'instant' => $products[$i]['instant'],

File: includes/classes/shopping_cart.php
========================================

Line:

    $products_query = xtc_db_query("select p.products_id, pd.products_name,p.products_shippingtime, p.products_image, p.products_model, p.products_price, p.products_discount_allowed, p.products_weight, p.products_tax_class_id from ".TABLE_PRODUCTS." p, ".TABLE_PRODUCTS_DESCRIPTION." pd where p.products_id='".xtc_get_prid($products_id)."' and pd.products_id = p.products_id and pd.language_id = '".$_SESSION['languages_id']."'");

Replace with:

    $products_query = xtc_db_query("select p.products_id, pd.products_name,p.products_shippingtime, p.products_image, p.products_model, p.products_price, p.products_discount_allowed, p.products_weight, p.products_width, p.products_length, p.products_height, p.products_instant, p.products_tax_class_id from ".TABLE_PRODUCTS." p, ".TABLE_PRODUCTS_DESCRIPTION." pd where p.products_id='".xtc_get_prid($products_id)."' and pd.products_id = p.products_id and pd.language_id = '".$_SESSION['languages_id']."'");

----

Line:

    $products_array[] = array ('id' => $products_id, 'name' => $products['products_name'], 'model' => $products['products_model'], 'image' => $products['products_image'], 'price' => $products_price + $this->attributes_price($products_id), 'quantity' => $this->contents[$products_id]['qty'], 'weight' => $products['products_weight'],'shipping_time' => $main->getShippingStatusName($products['products_shippingtime']), 'final_price' => ($products_price + $this->attributes_price($products_id)), 'tax_class_id' => $products['products_tax_class_id'], 'attributes' => $this->contents[$products_id]['attributes']);

Replace with:

    $products_array[] = array ('id' => $products_id, 'name' => $products['products_name'], 'model' => $products['products_model'], 'image' => $products['products_image'], 'price' => $products_price + $this->attributes_price($products_id), 'quantity' => $this->contents[$products_id]['qty'], 'weight' => $products['products_weight'], 'width' => $products['products_width'], 'length' => $products['products_length'], 'height' => $products['products_height'], 'instant' => $products['products_instant'], 'shipping_time' => $main->getShippingStatusName($products['products_shippingtime']), 'final_price' => ($products_price + $this->attributes_price($products_id)), 'tax_class_id' => $products['products_tax_class_id'], 'attributes' => $this->contents[$products_id]['attributes']);

File: lang/english/admin/categories.php
=======================================

Add:

    define('TEXT_PRODUCTS_LENGTH', 'Products Length:');
    define('TEXT_PRODUCTS_WIDTH', 'Products Width:');
    define('TEXT_PRODUCTS_HEIGHT', 'Products Height:');
    define('TEXT_PRODUCTS_INSTANT', 'Enable delivery with tiramizoo for this product');
    define('TEXT_PRODUCTS_WIDTH_INFO','<small>(cm)</small>');
    define('TEXT_PRODUCTS_LENGTH_INFO','<small>(cm)</small>');
    define('TEXT_PRODUCTS_HEIGHT_INFO','<small>(cm)</small>');
    define('TXT_WIDTH','Width');
    define('TXT_LENGTH','Length');
    define('TXT_HEIGHT','Height');

File: lang/german/admin/categories.php

Add:

    define('TEXT_PRODUCTS_WIDTH', 'Breite:');
    define('TEXT_PRODUCTS_LENGTH', 'L&auml;nge:');
    define('TEXT_PRODUCTS_HEIGHT', 'H&ouml;he:');
    define('TEXT_PRODUCTS_INSTANT', 'Lieferung durch tiramizoo für dieses Produkt zulassen');
    define('TEXT_PRODUCTS_WIDTH_INFO','<small>(cm)</small>');
    define('TEXT_PRODUCTS_LENGTH_INFO','<small>(cm)</small>');
    define('TEXT_PRODUCTS_HEIGHT_INFO','<small>(cm)</small>');
    define('TXT_WIDTH','Breite');
    define('TXT_HEIGHT','H&ouml;he');
    define('TXT_LENGTH','L&auml;nge');


<?php
/*
Plugin Name: my plugin
Author: Pierre
Version: 0.01
Plugin URI: http://wordpress.org/plugins/hello-dolly/
Author URI: http://ma.tt/
Description : On découvre les plugins en WP
Support URI: https://github.com/archetyped/simple-lightbox/wiki/Feedback-&-Support
*/


// Chargement des includes du plugin
require dirname(__FILE__) . "/inc/customs.php";
require dirname(__FILE__) . "/inc/acf-control.php";
require dirname(__FILE__) . "/shortcodes.php";

//hargement des assets du plugin
function my_plugin_required_enqueues() {
    wp_enqueue_style('my-plugin-style', WP_PLUGIN_URL . '/my-plugin/my-plugin-style.css');
    wp_enqueue_script('my-plugin-main', WP_PLUGIN_URL . '/my-plugin/my-plugin-main.js','','1.0',true);
    wp_enqueue_style('font-awesome', 'https://use.fontawesome.com/releases/v5.0.8/css/all.css');
}
add_action('wp_enqueue_scripts', 'my_plugin_required_enqueues');

//déclaration d'un template du plugin
function my_plugin_template( $page_template) {
    if( is_singular('voyages')) :
        $page_template = dirname(__FILE__) . '/templates/single-voyages.php';
    endif;
    return $page_template;
}
add_filter('template_include', 'my_plugin_template', 99);
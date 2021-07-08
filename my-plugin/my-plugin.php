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

require dirname(__FILE__) . "/inc/customs.php";
require dirname(__FILE__) . "/inc/acf-control.php";
require dirname(__FILE__) . "/shortcodes.php";

function my_plugin_required_enqueues() {
    wp_enqueue_style('my-plugin-style', WP_PLUGIN_URL . '/my-plugin/my-plugin-style.css');
    wp_enqueue_script('my-plugin-main', WP_PLUGIN_URL . '/my-plugin/my-plugin-main.js','','1.0',true);
    wp_enqueue_style('font-awesome', 'https://use.fontawesome.com/releases/v5.0.8/css/all.css');
}
add_action('wp_enqueue_scripts', 'my_plugin_required_enqueues');


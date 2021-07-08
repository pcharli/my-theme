<?php
//recup user
$user = wp_get_current_user();

// menu de gauche
function my_remove_admin_menu() {
    global $user;
    //remove_menu_page('edit.php');
    //remove_menu_page('edit.php?post_type=page');
    remove_menu_page('edit-comments.php');
    remove_menu_page('link-manager.php');
    //remove_menu_page('users.php');
    if( !in_array("administrator", $user ->roles)) :
        //remove_menu_page('upload.php');
        remove_menu_page('themes.php');
        remove_menu_page('plugins.php');
        remove_menu_page('tools.php');
        remove_menu_page('options-general.php');
        remove_menu_page('wpcf7'); //contact form 7
    endif;
}
add_action('admin_menu', 'my_remove_admin_menu');

// top toolsbar
function edit_admin_bar() {
    global $wp_admin_bar;
    $wp_admin_bar -> remove_menu('wp-logo');
    $wp_admin_bar -> remove_menu('new-content');
    $wp_admin_bar -> remove_menu('comments');
    $wp_admin_bar -> remove_menu('updates');

}
add_action('wp_before_admin_bar_render', 'edit_admin_bar');

//metabox page parente sur classic editor
function my_remove_meta_boxes() {
 
    remove_meta_box('pageparentdiv', 'page', 'normal');
  }
  add_action( 'admin_menu', 'my_remove_meta_boxes' );

  //retirer options d'écran
  function remove_screen_options($display_boolean, $wp_screen_object){
    $blacklist = array('post.php', 'post-new.php', 'index.php', 'edit.php');
    if (in_array($GLOBALS['pagenow'], $blacklist)) {
      $wp_screen_object->render_screen_layout();
      $wp_screen_object->render_per_page_options();
      return false;
    } else {
      return true;
    }
  }
  if( !in_array("administrator", $user ->roles)) :
    add_filter('screen_options_show_screen', 'remove_screen_options', 10, 2);
  endif;

  //retirer l'aide

function mytheme_remove_help_tabs($old_help, $screen_id, $screen){
    $screen->remove_help_tabs();
    return $old_help;
}
  add_filter( 'contextual_help', 'mytheme_remove_help_tabs', 999, 3 );
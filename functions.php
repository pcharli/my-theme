<?php
## INCLUDES
   require get_template_directory() . '/inc/my_functions.php';

## Menus de navigation
register_nav_menus( array(
    "primary" => "Main menu",
    "footer" => "Footer menu"
));


## chargement des librairies
function theme_enqueue() {
    wp_enqueue_style('bulma', 'https://cdnjs.cloudflare.com/ajax/libs/bulma/0.9.3/css/bulma.min.css');
    wp_enqueue_style('main', get_bloginfo('template_url') .'/style.css' );
    
if( is_page(8) ) :
    wp_enqueue_script('axios', 'https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js', '', '0.21.1', true);
    wp_enqueue_script('main', get_bloginfo('template_url') . '/js/main.js', array('axios'), '1.0', true);
endif;
}
add_action("wp_enqueue_scripts", "theme_enqueue");

## IMAGES
// add images à la une
add_theme_support('post-thumbnails');
set_post_thumbnail_size(200,300, array("left", "top"));

// tailles images
add_image_size('fullscreen', 600, 600);
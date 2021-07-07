<?php
## INCLUDES
   require get_template_directory() . '/inc/my_functions.php';
   require get_template_directory() . '/inc/customs.php';
   require get_template_directory() . '/inc/acf-control.php';

## Menus de navigation
register_nav_menus( array(
    "primary" => "Main menu",
    "footer" => "Footer menu"
));

## Zones de widgets
//supprmer des widgets par défaut
function remove_default_widgets() {
  //unregister_widget( 'WP_Widget_Pages' ); // Le widget Pages
  unregister_widget( 'WP_Widget_Calendar' ); // Le widget Calendrier
  unregister_widget( 'WP_Widget_Archives' ); // Le widget Archives
  unregister_widget( 'WP_Widget_Meta' ); // Le widget Meta
  unregister_widget( 'WP_Widget_Search' ); // Le widget Rechercher
  //unregister_widget( 'WP_Widget_Text' ); // Le widget de texte
  unregister_widget( 'WP_Widget_Media_Audio' ); // Le widget Audio
  //unregister_widget( 'WP_Widget_Media_Image' ); // Le widget Image
  //unregister_widget( 'WP_Widget_Media_Video' ); // Le widget Vidéo
  unregister_widget( 'WP_Widget_Custom_HTML' ); // Le widget HTML personnalisé
  //unregister_widget( 'WP_Widget_Categories' ); // Le widget catégories
  unregister_widget( 'WP_Widget_Recent_Posts' ); // Le widget articles récents
  unregister_widget( 'WP_Widget_Recent_Comments' ); // Le widget Commentaires récents
  unregister_widget( 'WP_Widget_RSS' ); // Le widget RSS
  //unregister_widget( 'WP_Widget_Tag_Cloud' ); // Le widget nuage d'étiquettes
  //unregister_widget( 'WP_Nav_Menu_Widget' ); // Le widget menu personnalisé
}
// déclare mes zones
function add_zones_widgets() {
    register_sidebar(
        array(
        "name"=> "Sidebar",
        "id" => "sidebar-right",
        "description" => "Zone de droite",
        "before_widget" => '<div class="widget">',
        "after_widget" => '</div>',
        "before_title" => '<h3 class="widget-title">',
        "after_title" => '</h3>'
        )
    );

    register_sidebar(
        array(
        "name"=> "Footer",
        "id" => "sidebar-footer",
        "description" => "Zone de pied de page",
        "before_widget" => '<div class="widget">',
        "after_widget" => '</div>',
        "before_title" => '<h3 class="widget-title">',
        "after_title" => '</h3>'
        )
    );
    remove_default_widgets();
}
add_action('widgets_init', 'add_zones_widgets');



## chargement des librairies
function theme_enqueue() {
    wp_enqueue_style('bulma', 'https://cdnjs.cloudflare.com/ajax/libs/bulma/0.9.3/css/bulma.min.css');
    wp_enqueue_style('main', get_bloginfo('template_url') .'/style.css' );

if( is_page(8) ) :
    wp_enqueue_script('axios', 'https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js', '', '0.21.1', true);
    wp_enqueue_script('main', get_bloginfo('template_url') . '/js/main.js', array('axios'), '1.1', true);
endif;
}
add_action("wp_enqueue_scripts", "theme_enqueue");

## IMAGES
// add images à la une
add_theme_support('post-thumbnails');
set_post_thumbnail_size(200,300, array("left", "top"));

// tailles images
add_image_size('fullscreen', 600, 600);

## DIVERS
// activer title auto
add_theme_support('title-tag');

//Activer mode HTML5
add_theme_support('html5',array(
    'search-form',
    'caption',
    'gallery'
));

// taille de l'extrait
function custom_excerpt_length($length) {
    return 25;
}
add_filter('excerpt_length', 'custom_excerpt_length');

//personnaliser search_form
function my_get_search_form($form) {

    $myForm = sprintf('<form action="%s" method="get" class="form search-form">
    <input placeholder="Rechercher" type="search" value="%s" name="s" class="input search-form-input"><button class="button">Rechercher</button></form>',
        get_bloginfo('url'),
        get_search_query()
    );
    return $myForm;
}
add_filter('get_search_form', 'my_get_search_form');

// afficher juste le nom d'un catégorie
function update_archive_title($title) {
    $title = explode(":", $title);
    //return myPrint_r($title);
    return "Liste des articles ".$title[1];
}
add_filter('get_the_archive_title', 'update_archive_title');
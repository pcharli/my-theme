<?php
// SHORTCODE LISTING

function my_plugin_liste_voyages($atts) {
    $atts = shortcode_atts((array(
        'nb' => 2
    )), $atts);

    $args = array(
        'post_type' => 'voyages',
        'posts_per_page' => $atts['nb']
    );

    $liste_voyages = new WP_Query($args);
    if( $liste_voyages -> have_posts() ) :
        $output = '<div class="my-plugin nos-voyages">';
        $output .= '<h2 class="my-plugin title">Nos voyages</h2>';
        $output .= '<ul class="my-plugin liste-voyages">';
        while($liste_voyages->have_posts()):
            $liste_voyages->the_post();
            $output .= sprintf('<li data-id="%s" class="my-pugin liste-voyage-item"><a href="%s">%s</a></li>',
            get_the_ID(),
            get_the_permalink(),
            get_the_title()
        );
        endwhile;
        $output .= '</ul></div>';
        return $output;
    endif;
}
add_shortcode("mp-liste-voyages", 'my_plugin_liste_voyages');
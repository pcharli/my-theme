<?php

//demo
function bonjour($atts, $content = '') {
    $atts = shortcode_atts(array(
        "qui" => ''
    ), $atts, 'bonjour');
    if( $atts['qui'] == '') :
        return "Bonjour $content";
    else :
        return "Bonjour " . $atts['qui'] . ", $content ";
    endif;
}
add_shortcode('bonjour', 'bonjour');

//lister les produits

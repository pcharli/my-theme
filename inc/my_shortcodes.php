<?php

//demo [bonjour qui="Pierre"]Contenu[/bonjour]
function mon_bonjour($atts, $content = '') {
    $atts = shortcode_atts(array(
        "qui" => ''
    ), $atts, 'bonjour');
    if( $atts['qui'] == '') :
        return "Bonjour $content";
    else :
        return "Bonjour " . $atts['qui'] . ", $content ";
    endif;
}
add_shortcode('bonjour', 'mon_bonjour');






//lister les produits [produits nb=x]

function liste_produits($atts) {
    $atts = shortcode_atts(array(
        "nb" => 2
    ), $atts);
    
    $args = array(
        "post_type" => "produits",
        "posts_per_page" => $atts['nb']
    );
    $qProduits = new WP_Query($args);
    
    $returnText = "<h2>Nos fruits</h2>";
    if( $qProduits->have_posts()) :
        
        $returnText .= "<ul>";
        
        while($qProduits->have_posts()) :
            $qProduits->the_post();
            $returnText.= sprintf('<li><a href="%s">%s</a></li>',
                get_the_permalink(),
                get_the_title()
        );
        endwhile;
        $returnText .= "</ul>";
    else :
        $returnText .= "<p>Il n'y a pas de produit</p>";
    endif;
    return $returnText;
    //wp_reset_postdata();
}
add_shortcode('produits', 'liste_produits');
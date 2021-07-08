<?php

// Custom post voyages
function cptui_register_my_cpts_voyages() {

	/**
	 * Post Type: Voyages.
	 */

	$labels = [
		"name" => __( "Voyages", "custom-post-type-ui" ),
		"singular_name" => __( "Voyage", "custom-post-type-ui" ),
		"menu_name" => __( "Voyages", "custom-post-type-ui" ),
		"all_items" => __( "Tous les Voyages", "custom-post-type-ui" ),
		"add_new" => __( "Ajouter un nouveau", "custom-post-type-ui" ),
		"add_new_item" => __( "Ajouter un nouveau Voyage", "custom-post-type-ui" ),
		"edit_item" => __( "Modifier Voyage", "custom-post-type-ui" ),
		"new_item" => __( "Nouveau Voyage", "custom-post-type-ui" ),
		"view_item" => __( "Voir Voyage", "custom-post-type-ui" ),
		"view_items" => __( "Voir Voyages", "custom-post-type-ui" ),
		"search_items" => __( "Recherche de Voyages", "custom-post-type-ui" ),
		"not_found" => __( "Aucun Voyages trouvé", "custom-post-type-ui" ),
		"not_found_in_trash" => __( "Aucun Voyages trouvé dans la corbeille", "custom-post-type-ui" ),
		"parent" => __( "Parent Voyage :", "custom-post-type-ui" ),
		"featured_image" => __( "Image mise en avant pour ce Voyage", "custom-post-type-ui" ),
		"set_featured_image" => __( "Définir l’image mise en avant pour ce Voyage", "custom-post-type-ui" ),
		"remove_featured_image" => __( "Retirer l’image mise en avant pour ce Voyage", "custom-post-type-ui" ),
		"use_featured_image" => __( "Utiliser comme image mise en avant pour ce Voyage", "custom-post-type-ui" ),
		"archives" => __( "Archives de Voyage", "custom-post-type-ui" ),
		"insert_into_item" => __( "Insérer dans Voyage", "custom-post-type-ui" ),
		"uploaded_to_this_item" => __( "Téléverser sur ce Voyage", "custom-post-type-ui" ),
		"filter_items_list" => __( "Filtrer la liste de Voyages", "custom-post-type-ui" ),
		"items_list_navigation" => __( "Navigation de liste de Voyages", "custom-post-type-ui" ),
		"items_list" => __( "Liste de Voyages", "custom-post-type-ui" ),
		"attributes" => __( "Attributs de Voyages", "custom-post-type-ui" ),
		"name_admin_bar" => __( "Voyage", "custom-post-type-ui" ),
		"item_published" => __( "Voyage publié", "custom-post-type-ui" ),
		"item_published_privately" => __( "Voyage publié en privé.", "custom-post-type-ui" ),
		"item_reverted_to_draft" => __( "Voyage repassés en brouillon.", "custom-post-type-ui" ),
		"item_scheduled" => __( "Voyage planifié", "custom-post-type-ui" ),
		"item_updated" => __( "Voyage mis à jour.", "custom-post-type-ui" ),
		"parent_item_colon" => __( "Parent Voyage :", "custom-post-type-ui" ),
	];

	$args = [
		"label" => __( "Voyages", "custom-post-type-ui" ),
		"labels" => $labels,
		"description" => "",
		"public" => true,
		"publicly_queryable" => true,
		"show_ui" => true,
		"show_in_rest" => true,
		"rest_base" => "",
		"rest_controller_class" => "WP_REST_Posts_Controller",
		"has_archive" => true,
		"show_in_menu" => true,
		"show_in_nav_menus" => true,
		"delete_with_user" => false,
		"exclude_from_search" => false,
		"capability_type" => "post",
		"map_meta_cap" => true,
		"hierarchical" => false,
		"rewrite" => [ "slug" => "voyages", "with_front" => true ],
		"query_var" => true,
		"menu_position" => 7,
		"menu_icon" => "dashicons-camera-alt",
		"supports" => [ "title", "thumbnail", "excerpt", "revisions" ],
		"show_in_graphql" => false,
	];

	register_post_type( "voyages", $args );
}

add_action( 'init', 'cptui_register_my_cpts_voyages' );


//end voyage

// taxonomie types de voyages

function cptui_register_my_taxes_voyages_types() {

	/**
	 * Taxonomy: Types.
	 */

	$labels = [
		"name" => __( "Types", "custom-post-type-ui" ),
		"singular_name" => __( "Type", "custom-post-type-ui" ),
	];

	
	$args = [
		"label" => __( "Types", "custom-post-type-ui" ),
		"labels" => $labels,
		"public" => true,
		"publicly_queryable" => true,
		"hierarchical" => false,
		"show_ui" => true,
		"show_in_menu" => true,
		"show_in_nav_menus" => true,
		"query_var" => true,
		"rewrite" => [ 'slug' => 'voyages_types', 'with_front' => true, ],
		"show_admin_column" => false,
		"show_in_rest" => true,
		"rest_base" => "voyages_types",
		"rest_controller_class" => "WP_REST_Terms_Controller",
		"show_in_quick_edit" => false,
		"show_in_graphql" => false,
	];
	register_taxonomy( "voyages_types", [ "voyages" ], $args );
}
add_action( 'init', 'cptui_register_my_taxes_voyages_types' );


// champs ACF

if( function_exists('acf_add_local_field_group') ):

    acf_add_local_field_group(array(
        'key' => 'group_60e6fe46d3f2c',
        'title' => 'Infos voyage',
        'fields' => array(
            array(
                'key' => 'field_60e6fe5387985',
                'label' => 'Prix',
                'name' => 'voyages-prix',
                'type' => 'number',
                'instructions' => '',
                'required' => 0,
                'conditional_logic' => 0,
                'wrapper' => array(
                    'width' => '',
                    'class' => '',
                    'id' => '',
                ),
                'default_value' => '',
                'placeholder' => '',
                'prepend' => '',
                'append' => '€',
                'min' => '',
                'max' => '',
                'step' => '0.01',
            ),
            array(
                'key' => 'field_60e6fe7e87986',
                'label' => 'Continent',
                'name' => 'voyages-continent',
                'type' => 'select',
                'instructions' => '',
                'required' => 1,
                'conditional_logic' => 0,
                'wrapper' => array(
                    'width' => '',
                    'class' => '',
                    'id' => '',
                ),
                'choices' => array(
                    'Afrique' => 'Afrique',
                    'Amérique du Nord' => 'Amérique du Nord',
                    'Amérique du Sud' => 'Amérique du Sud',
                    'Asie' => 'Asie',
                    'Europe' => 'Europe',
                    'Océanie' => 'Océanie',
                ),
                'default_value' => 'Afrique',
                'allow_null' => 0,
                'multiple' => 0,
                'ui' => 0,
                'return_format' => 'value',
                'ajax' => 0,
                'placeholder' => '',
            ),
            array(
                'key' => 'field_60e6fed687987',
                'label' => 'Vaccination',
                'name' => 'voyage-vaccination',
                'type' => 'true_false',
                'instructions' => '',
                'required' => 0,
                'conditional_logic' => array(
                    array(
                        array(
                            'field' => 'field_60e6fe7e87986',
                            'operator' => '!=',
                            'value' => 'Europe',
                        ),
                        array(
                            'field' => 'field_60e6fe7e87986',
                            'operator' => '!=',
                            'value' => 'Amérique du Nord',
                        ),
                    ),
                ),
                'wrapper' => array(
                    'width' => '',
                    'class' => '',
                    'id' => '',
                ),
                'message' => '',
                'default_value' => 0,
                'ui' => 0,
                'ui_on_text' => '',
                'ui_off_text' => '',
            ),
            array(
                'key' => 'field_60e6ff3e87989',
                'label' => 'Départ',
                'name' => 'voyages-depart',
                'type' => 'date_picker',
                'instructions' => '',
                'required' => 1,
                'conditional_logic' => 0,
                'wrapper' => array(
                    'width' => '50',
                    'class' => '',
                    'id' => '',
                ),
                'display_format' => 'd/m/Y',
                'return_format' => 'd/m/Y',
                'first_day' => 1,
            ),
            array(
                'key' => 'field_60e6ffa08798b',
                'label' => 'Retour',
                'name' => 'voyages-retour',
                'type' => 'date_picker',
                'instructions' => '',
                'required' => 1,
                'conditional_logic' => 0,
                'wrapper' => array(
                    'width' => '50',
                    'class' => '',
                    'id' => '',
                ),
                'display_format' => 'd/m/Y',
                'return_format' => 'd/m/Y',
                'first_day' => 1,
            ),
        ),
        'location' => array(
            array(
                array(
                    'param' => 'post_type',
                    'operator' => '==',
                    'value' => 'voyages',
                ),
            ),
        ),
        'menu_order' => 0,
        'position' => 'normal',
        'style' => 'default',
        'label_placement' => 'top',
        'instruction_placement' => 'label',
        'hide_on_screen' => '',
        'active' => true,
        'description' => '',
    ));
    
    endif;
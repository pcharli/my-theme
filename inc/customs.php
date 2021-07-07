<?php

// tous les custom posts
function cptui_register_my_cpts() {

	/**
	 * Post Type: Collaborateurs.
	 */

	$labels = [
		"name" => __( "Collaborateurs", "custom-post-type-ui" ),
		"singular_name" => __( "Collaborateur", "custom-post-type-ui" ),
		"menu_name" => __( "Mes Collaborateurs", "custom-post-type-ui" ),
		"all_items" => __( "Tous les Collaborateurs", "custom-post-type-ui" ),
		"add_new" => __( "Ajouter un collaborateur", "custom-post-type-ui" ),
		"add_new_item" => __( "Ajouter un nouveau Collaborateur", "custom-post-type-ui" ),
		"edit_item" => __( "Modifier un collaborateur", "custom-post-type-ui" ),
		"new_item" => __( "Nouveau Collaborateur", "custom-post-type-ui" ),
		"view_item" => __( "Voir Collaborateur", "custom-post-type-ui" ),
		"view_items" => __( "Voir Collaborateurs", "custom-post-type-ui" ),
		"search_items" => __( "Recherche de Collaborateurs", "custom-post-type-ui" ),
		"not_found" => __( "Aucun Collaborateurs trouvé", "custom-post-type-ui" ),
		"not_found_in_trash" => __( "Aucun Collaborateurs trouvé dans la corbeille", "custom-post-type-ui" ),
		"parent" => __( "Parent Collaborateur :", "custom-post-type-ui" ),
		"featured_image" => __( "Image mise en avant pour ce Collaborateur", "custom-post-type-ui" ),
		"set_featured_image" => __( "Définir l’image mise en avant pour ce Collaborateur", "custom-post-type-ui" ),
		"remove_featured_image" => __( "Retirer l’image mise en avant pour ce Collaborateur", "custom-post-type-ui" ),
		"use_featured_image" => __( "Utiliser comme image mise en avant pour ce Collaborateur", "custom-post-type-ui" ),
		"archives" => __( "Archives de Collaborateur", "custom-post-type-ui" ),
		"insert_into_item" => __( "Insérer dans Collaborateur", "custom-post-type-ui" ),
		"uploaded_to_this_item" => __( "Téléverser sur ce Collaborateur", "custom-post-type-ui" ),
		"filter_items_list" => __( "Filtrer la liste de Collaborateurs", "custom-post-type-ui" ),
		"items_list_navigation" => __( "Navigation de liste de Collaborateurs", "custom-post-type-ui" ),
		"items_list" => __( "Liste de Collaborateurs", "custom-post-type-ui" ),
		"attributes" => __( "Attributs de Collaborateurs", "custom-post-type-ui" ),
		"name_admin_bar" => __( "Collaborateur", "custom-post-type-ui" ),
		"item_published" => __( "Collaborateur publié", "custom-post-type-ui" ),
		"item_published_privately" => __( "Collaborateur publié en privé.", "custom-post-type-ui" ),
		"item_reverted_to_draft" => __( "Collaborateur repassés en brouillon.", "custom-post-type-ui" ),
		"item_scheduled" => __( "Collaborateur planifié", "custom-post-type-ui" ),
		"item_updated" => __( "Collaborateur mis à jour.", "custom-post-type-ui" ),
		"parent_item_colon" => __( "Parent Collaborateur :", "custom-post-type-ui" ),
	];

	$args = [
		"label" => __( "Collaborateurs", "custom-post-type-ui" ),
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
		"rewrite" => [ "slug" => "collaborateurs", "with_front" => true ],
		"query_var" => true,
		"menu_position" => 5,
		"menu_icon" => "dashicons-admin-users",
		"supports" => [ "title", "editor", "thumbnail" ],
		"show_in_graphql" => false,
	];

	register_post_type( "collaborateurs", $args );
}

add_action( 'init', 'cptui_register_my_cpts' );



//toutes les customs taxonomies
function cptui_register_my_taxes() {

	/**
	 * Taxonomy: Secteurs.
	 */

	$labels = [
		"name" => __( "Secteurs", "custom-post-type-ui" ),
		"singular_name" => __( "Secteur", "custom-post-type-ui" ),
	];

	
	$args = [
		"label" => __( "Secteurs", "custom-post-type-ui" ),
		"labels" => $labels,
		"public" => true,
		"publicly_queryable" => true,
		"hierarchical" => false,
		"show_ui" => true,
		"show_in_menu" => true,
		"show_in_nav_menus" => true,
		"query_var" => true,
		"rewrite" => [ 'slug' => 'secteurs', 'with_front' => true, ],
		"show_admin_column" => false,
		"show_in_rest" => true,
		"rest_base" => "secteurs",
		"rest_controller_class" => "WP_REST_Terms_Controller",
		"show_in_quick_edit" => false,
		"show_in_graphql" => false,
	];
	register_taxonomy( "secteurs", [ "collaborateurs" ], $args );

	$labels = [
		"name" => __( "Compétences", "custom-post-type-ui" ),
		"singular_name" => __( "Compétence", "custom-post-type-ui" ),
	];

	
	$args = [
		"label" => __( "Compétences", "custom-post-type-ui" ),
		"labels" => $labels,
		"public" => true,
		"publicly_queryable" => true,
		"hierarchical" => false,
		"show_ui" => true,
		"show_in_menu" => true,
		"show_in_nav_menus" => true,
		"query_var" => true,
		"rewrite" => [ 'slug' => 'competences', 'with_front' => true, ],
		"show_admin_column" => false,
		"show_in_rest" => true,
		"rest_base" => "competences",
		"rest_controller_class" => "WP_REST_Terms_Controller",
		"show_in_quick_edit" => false,
		"show_in_graphql" => false,
	];
	register_taxonomy( "competences", [ "collaborateurs" ], $args );
}
add_action( 'init', 'cptui_register_my_taxes' );

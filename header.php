<!doctype html>
    <html lang="<?php bloginfo('language');?>">
        <head>
            <meta charset="<?php bloginfo('charset');?>">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            
            
            <?php wp_head();?>
        </head>
        <body <?php body_class();?>>
        <?php wp_body_open();?>
            <div class="page container content">
                <header class="header hero is-primary">
                    <div class="hero-body">
                        <h1><?php bloginfo('name');?></h1>
                        <?php 
                        $args = array(
                            "theme_location" => "primary",
                            "container" => "nav",
                            "menu_class" => "navbar-brand",
                            "add_li_class" => "navbar-item",
                            "container_class" => "menu-principal"
                        );
                        wp_nav_menu($args);?>
                        <hr>
                        <?php get_search_form();?>
                        
                    </div>
                </header>
            <div class="columns">
                <div class="column">
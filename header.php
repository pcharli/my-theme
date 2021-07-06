<!doctype html>
    <html lang="<?php bloginfo('language');?>">
        <head>
            <meta charset="<?php bloginfo('charset');?>">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title><?php the_title();?> - <?php bloginfo('name');?></title>
            
            <?php wp_head();?>
        </head>
        <body <?php body_class();?>>
        <?php wp_body_open();?>
            <div class="page">
            <header class="header">
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
            </header>
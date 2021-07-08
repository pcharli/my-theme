<?php get_header();?>
    <main class="main">
        <?php if(have_posts()) :
            while(have_posts()) : the_post();
            //myPrint_r($post);?>
        <section <?php post_class('section');?>>
            <?php the_title('<h1 class="title">Titre: ', '</h1>');?>
           
            <?php the_content();?>
        </section>
        <?php endwhile; ?>
        <?php endif;?>
        <hr>
        <?php get_template_part( 'template_parts/last-news' );?>
    </main>
    <?php get_sidebar();?>
    <?php get_footer();?>
    <?php myPrint_r(wp_get_current_user());?>
<?php get_header();?>
    <main class="main">
    <h1>Catégorie : << nom de la catégorie >></h1>
        <?php if(have_posts()) :
            while(have_posts()) : the_post();?>
        <section <?php post_class('section');?>>
            <?php the_title('<h1 class="title">Titre: ', '</h1>');?>
            <?php the_content();?>
        </section>
        <?php endwhile; ?>
        <?php endif;?>
    </main>
    <?php //get_sidebar();?>
    <?php get_footer();?>
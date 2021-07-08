<?php get_header();?>
    <main class="main <?php echo get_post_format();?>">
        <?php if(have_posts()) :
            while(have_posts()) : the_post();?>
        <section <?php post_class('section');?>>
            <?php the_title('<h1 class="title">', '</h1>');?>
            <?php echo do_shortcode('[contact-form-7 id="66" title="Formulaire de contact 1"]');?>
        </section>
        <?php endwhile; ?>
       
        <?php endif;?>
    </main>
    <?php get_sidebar();?>
    <?php get_footer();?>
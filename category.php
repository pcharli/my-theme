<?php get_header();?>
    <main class="main">
    <h1><?php echo get_the_archive_title();?></h1>
        <?php if(have_posts()) :
            while(have_posts()) : the_post();?>
        <section <?php post_class('section');?>>
            <?php the_title('<h1 class="title">Titre: ', '</h1>');?>
            <?php the_excerpt();?>
            <a href="<?php the_permalink();?>">Lire la suite</a>
        </section>
        <?php endwhile; ?>
        <?php endif;?>
    </main>
    <?php //get_sidebar();?>
    <?php get_footer();?>
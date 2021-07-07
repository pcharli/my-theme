<?php get_header();?>
    <main class="main">
    <h1>Résultat de recherche</h1>
    <?php //myPrint_r($wp_query);?>
        <?php if(have_posts()) :?>
         <h2>Il y a <?php echo $wp_query->post_count;?> résultats pour "<?php echo get_search_query();?>"</h2>   
            <?php while(have_posts()) : the_post();?>
        <section <?php post_class('section');?>>
            <?php the_title('<h1 class="title">', '</h1>');?>
            <?php the_excerpt();?>
            <a href="<?php the_permalink();?>">Lire la suite</a>
        </section>
        <?php endwhile; ?>
        <?php else :?>
            <p>Aucun résultat pour ""<?php echo get_search_query();?>"</p>
        <?php endif;?>
    </main>
    <?php get_sidebar();?>
    <?php get_footer();?>
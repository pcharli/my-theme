<?php 
/*
Template Name: Custom
*/
?>
<?php get_header();?>
    <main class="main <?php echo get_post_format();?>">
        <?php if(have_posts()) :
            while(have_posts()) : the_post();?>
        <section <?php post_class('section');?>>
            <?php the_title('<h1 class="title">Titre: ', '</h1>');?>
            <?php the_content();?>
            <p>CUSTOM</p>
            <?php get_template_part('template_parts/single', get_post_format());?>
            <?php //get_template_part('template_parts/single', 'excerpt');?>
            <?php if(get_post_format() == 'video'):
                echo "video";
            endif;?>
        </section>
        <?php endwhile; ?>
       
        <?php endif;?>
    </main>
    <?php get_sidebar();?>
    <?php get_footer();?>
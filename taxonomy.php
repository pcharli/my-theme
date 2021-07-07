<?php get_header();?>
<main class="main">
    <h1><?php echo get_the_archive_title();?></h1>
    <?php if(have_posts()) :?>
    <div class="panel">
        <?php  while(have_posts()) : the_post();?>
        <div class="panel-block">
            <section <?php post_class('section listing');?>>
                <div class="vignette">
                    <?php $vignette = get_field("collaborateurs-photo");
                    //myPrint_r($vignette);?>
                    <img src="<?php echo $vignette['sizes']['thumbnail'];?>" alt="<?php echo $vignette['alt'];?>">
                </div>
                <div class="infos">
                    <?php the_title('<h1 class="title">', '</h1>');?>
                    <?php the_excerpt();?>
                    <a href="<?php the_permalink();?>" class="more">Lire la suite</a>
                </div>
            </section>
        </div>
        <?php endwhile; ?>
    </div>
    <?php endif;?>
</main>
<?php get_sidebar();?>
<?php get_footer();?>
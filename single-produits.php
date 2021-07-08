<?php get_header();?>
<main class="main">
    <?php if (have_posts()):
    while (have_posts()): the_post();?>
    <section <?php post_class('section');?>>
        <h1><?php the_title();?></h1>
        <?php //myPrint_r(get_fields(),'fixed');?>
        <div class="columns">
            <div class="column is-one-quarter">
                <?php the_post_thumbnail();?>
            </div>
            <div class="column">
                
                <?php echo do_shortcode('[tabby title="Infos générale"]');?>

                <?php the_field('produits-description');?>
                Prix : <?php the_field('produits-prix');?> €
                <?php if (get_field('produits-promotion') > 0) :?>
                    <br>Prix promotionnel : <?php the_field('produits-promotion');?> €
                <?php endif;?>

                <?php echo do_shortcode('[tabby title="Paramètres"]');?>
                <?php the_field('produits-stock');?>
                <hr>
                <dl>
                    <dt>Hauteur</dt>
                    <dd><?php the_field('produits-hauteur');?> cm</dd>
                    <dt>Largeur</dt>
                    <dd><?php the_field('produits-largeur');?> cm</dd>
                    <dt>Longueur</dt>
                    <dd><?php the_field('produits-longueur');?> cm</dd>
                </dl>

                <?php echo do_shortcode('[tabbyending]');?>
            </div>
        </div>
        <?php //myPrint_r(get_field('collaborateurs-photo'));?>
    </section>
    <?php endwhile;?>

    <?php endif;?>
</main>
<?php get_sidebar();?>
<?php get_footer();?>
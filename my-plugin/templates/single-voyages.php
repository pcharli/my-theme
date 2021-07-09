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
                <dl class="mp-details-voyages">
                    <dt>Prix</dt>
                    <dd><?php the_field("voyages-prix");?> €</dd>
                    <dt>Continent</dt>
                    <dd><?php the_field("voyages-continent");?></dd>
                    <dt>Vaccination</dt>
                    <dd><?php echo (get_field("voyages-vaccination") == 1) ? 'Obligatoire' : 'Facultative' ;?></dd>
                    <dt>Date de départ</dt>
                    <dd><?php the_field("voyages-depart");?></dd>
                    <dt>Date de retour</dt>
                    <dd><?php the_field("voyages-retour");?></dd>
                </dl>
            </div>
        </div>
    </section>
    <?php endwhile;?>

    <?php endif;?>
</main>
<?php get_sidebar();?>
<?php get_footer();?>
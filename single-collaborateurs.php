<?php get_header();?>
<main class="main">
    <?php if (have_posts()):
    while (have_posts()): the_post();?>
    <section <?php post_class('section');?>>
        <div class="card">
            <div class="card-image">
                <figure class="image is-4by3">
                    <?php $photo = get_field('collaborateurs-photo');?>
                    <img src="<?php echo $photo['sizes']['fullscreen']; ?>" alt="<?php echo $photo['alt']; ?>"
                        class="photo-collaborateur"
                        style="width:<?php echo $photo['sizes']['fullscreen-width']; ?>px; height:<?php echo $photo['sizes']['fullscreen-height']; ?>px;">
                </figure>
            </div>
            <div class="card-content">
                <div class="media">
                    <div class="media-content">
                        <p class="title is-4"><?php the_field('collaborateurs-prenom');?>
                            <?php the_field('collaborateurs-nom');?></p>
                        <p class="subtitle is-6"><?php the_field('collaborateurs-email');?></p>
                        <p class="superieur">Supérieur : <?php $qui = get_field('collaborateurs-superieur');?>
                            <a href="<?php echo $qui[0]->guid; ?>"><?php echo $qui[0]->post_title; ?></a>
                        </p>
                    </div>
                </div>

                <div class="content">
                    <?php the_content();?>
                    <?php 
                    $competences = get_the_terms(get_the_ID(), 'competences');
                    //myPrint_r($competences);
                    ?>
                    <hr>
                    <?php foreach($competences AS $key => $value) :?>
                    <a href="<?php echo get_term_link($value->slug,'competences');?>">#<?php echo $value->name;?></a>&nbsp;
                    <?php endforeach;?>
                    <br>
                    <time datetime="2016-1-1">11:09 PM - 1 Jan 2016</time>
                </div>
            </div>
        </div>

        <?php //myPrint_r(get_field('collaborateurs-photo'));?>
    </section>
    <?php endwhile;?>

    <?php endif;?>
</main>
<?php get_sidebar();?>
<?php get_footer();?>
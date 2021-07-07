<?php 
        $args = array(
            'category_name' => 'news',
            'posts_per_page' => 2,
            'order' => 'DESC' //DESC ou ASC
        );
        $news = new WP_Query($args);?>
<h2>Les <?php echo $news->post_count;?> dernières news</h2>'
<?php while($news->have_posts()) : $news->the_post();
            the_title('<h3>','</h3>');
            the_excerpt('<p>','</p>');?>
<a href="<?php the_permalink();?>" class="more">Lire la suite</a>
<?php endwhile;
        wp_reset_postdata();
        ?>
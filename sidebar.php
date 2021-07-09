</div> <!-- .column -->
<div class="column is-one-quarter">
    <aside class="sidebar">
        <h2>Titre aside</h2>
        <?php get_template_part('template_parts/meteo');?>
        <hr>

        <h2>Nos secteurs</h2>
        <ul class="secteurs-list group-list">
            <?php $secteurs = get_terms('secteurs');
//myPrint_r($secteurs);
foreach ($secteurs as $key => $value): ?>
            <li class="secteurs-item group-list-item">
                <a href="<?php echo get_term_link($value->slug, 'secteurs') ?>"
                    class="secteur-item-link"><?php echo $value->name; ?></a>
            </li>
            <?php endforeach;?>
        </ul>
        <?php dynamic_sidebar('sidebar-right');?>
    </aside>
</div>
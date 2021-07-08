<?php
if(!function_exists('get_field')) :
    function my_plugin_warning_admin_acf() {?>
    <div id="my-acf-warning" class="error fade">
        <p><strong>Attention</strong>, le plugin "my Plugin" a besoin d'ACF</p>
    </div>
   <?php }
   add_action('admin_notices', 'my_plugin_warning_admin_acf');

   function my_plugin_warning_front_acf() {
       wp_die('Désolé, le site est en maintenance à cause de my plugin');
   }
   add_action('template_redirect', 'my_plugin_warning_front_acf');
endif;

<?php
if(!function_exists('get_field')) :
    function warning_admin_acf() {?>
    <div id="my-acf-warning" class="error fade">
        <p><strong>Attention</strong>, ce site a besoin d'ACF</p>
    </div>
   <?php }
   add_action('admin_notices', 'warning_admin_acf');

   function warning_front_acf() {
       wp_die('Désolé, le site est en maintenance');
   }
   add_action('template_redirect', 'warning_front_acf');
endif;

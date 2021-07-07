<?php
 function myPrint_r($value) {
    if(WP_DEBUG) :
    echo '<pre>';
        print_r($value);
    echo '</pre>';
    endif;
}
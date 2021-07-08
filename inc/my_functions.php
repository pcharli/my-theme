<?php
 function myPrint_r($value, $display="relative") {
    if(WP_DEBUG) :
        if($display != 'relative') :
            $border = "border: 1px solid black; background: silver; z-index:10000;";
        endif;
    echo '<pre style="'.$border.' position:'.$display.'; bottom:0px; left:0px">';
        print_r($value);
    echo '</pre>';
    endif;
}
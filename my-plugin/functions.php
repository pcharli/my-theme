<?php

/**
 * Functions
 * Provides global access to specific functionality
 * @package my plugin
 * @author Archetyped
 */
    add_action( 'admin_notices', 'hello_dolly' );

    function hello_dolly() {
        echo '<p class="test">Test</p>';
    }
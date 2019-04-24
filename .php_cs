<?php
$finder = PhpCsFixer\Finder::create()
    ->exclude('node_modules')
    ->exclude('vendor')
    ->in(__DIR__);
return PhpCsFixer\Config::create()
    ->setRules([
        '@PSR2' => true,
	'braces' => [
            'position_after_control_structures' => 'same',
            'position_after_functions_and_oop_constructs' => 'same'
	],
	'no_whitespace_in_blank_line' => true,
    ])
    ->setFinder($finder);

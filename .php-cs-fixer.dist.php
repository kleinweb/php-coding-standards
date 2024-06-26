<?php

declare(strict_types=1);

/*
 * This document has been generated with
 * https://mlocati.github.io/php-cs-fixer-configurator/#version:3.58.1|configurator
 * you can change this configuration by importing this file.
 */
$config = new PhpCsFixer\Config();

return $config
    ->setRules([
        '@Symfony' => true,
        '@PER-CS' => true,
        'function_declaration' => ['closure_fn_spacing' => 'one'],
        'global_namespace_import' => true,
        'multiline_whitespace_before_semicolons' => true,
        'no_alternative_syntax' => [
            'fix_non_monolithic_code' => false,
        ],
        'yoda_style' => [
            'equal' => false,
            'identical' => false,
        ],
    ])
    ->setFinder(
        PhpCsFixer\Finder::create()
        ->in(__DIR__)
        ->ignoreVCSIgnored(true),
    );

<?php

/**
 * ECS configuration for Kleinweb projects.
 */

declare(strict_types=1);

use PhpCsFixer\Fixer\ClassNotation\OrderedTypesFixer;
use PhpCsFixer\Fixer\ControlStructure\TrailingCommaInMultilineFixer;
use PhpCsFixer\Fixer\ControlStructure\YodaStyleFixer;
use PhpCsFixer\Fixer\Import\GlobalNamespaceImportFixer;
use PhpCsFixer\Fixer\ReturnNotation\SimplifiedNullReturnFixer;
use Symplify\EasyCodingStandard\Config\ECSConfig;

return ECSConfig::configure()
    ->withPaths([
        'ecs.php',
    ])
    ->withPreparedSets(strict: true, common: true, psr12: true, symplify: true, cleanCode: true)
    ->withPhpCsFixerSets(symfony: true)
    ->withRules([PhpCsFixer\Fixer\Basic\SingleLineEmptyBodyFixer::class])
    ->withSkip([
        // Fully-qualified namespaces provide clarity here.
        GlobalNamespaceImportFixer::class => ['ecs.php'],

        // Can cause invalid return types.
        SimplifiedNullReturnFixer::class,

        // PhpdocSummaryFixer::class,
    ])
    ->withConfiguredRule(YodaStyleFixer::class, [
        'equal' => false,
        'identical' => false,
        'less_and_greater' => false,
    ])
    ->withConfiguredRule(GlobalNamespaceImportFixer::class, [
        'import_classes' => true,
        'import_constants' => true,
        'import_functions' => true,
    ])
    ->withConfiguredRule(OrderedTypesFixer::class, [
        'null_adjustment' => 'always_last',
    ])
    ->withConfiguredRule(TrailingCommaInMultilineFixer::class, [
        'after_heredoc' => true,
        'elements' => ['arguments', 'arrays', 'match', 'parameters'],
    ])

;

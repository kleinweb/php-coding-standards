# PHP Coding Standards for the Klein College of Media and Communication

## Goals

- Strict enough for idealists, relaxed enough for realists
- Stylistic formatting handled by ECS and PHP-CS-Fixer
- Linting checks handled by PHP_CodeSniffer
- Type checks handled by PHPStan
- No compromises for legacy versions of PHP

## Style

Generally follows the Symfony setlist for PHP-CS-Fixer.  The Symfony standards
are currently based on PER-2.0.

Currently handled per project by copy-paste.  See `ecs.php`.

## Linting

Based on the `WordPress-VIP-Go` ruleset, with many hand-picked additions from
`SlevomatCodingStandard` and some others adapted from the `PSR12NeutronRuleset`
[[link](https://github.com/szepeviktor/phpcs-psr-12-neutron-hybrid-ruleset)].

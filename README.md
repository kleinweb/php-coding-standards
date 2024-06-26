# PHP Coding Standards for the Klein College of Media and Communication

Strict enough for idealists, relaxed enough for realists.

## Goals and Non-Goals

- Clear separation of tooling domains to prevent conflicts
- Prefer PHP Framework Interop Group (PHP-FIG) standards where feasible
- Encourage WordPress-specific best practices while guarding against reactionary
  norms
- No support for unsupported PHP versions (obviously, right?!)
- Guard against footguns → minimize wake-up calls

## Style: PHP-CS-Fixer (`.php-cs-fixer.dist.php`)

Generally follows the Symfony setlist for PHP-CS-Fixer.  The Symfony standards
are currently based on PER-2.0.

Currently handled per project by copy-paste.

## Linting: PHP_CodeSniffer (`.phpcs.xml.dist`)

Primarily based on the `WordPress-VIP-Go` ruleset.  While we do not use
WordPress VIP hosting, this standard encourages best-practices while allowing
for stylistic flexibility.  This is achieved by applying a curated set of rules
from the core WordPress Coding Standards in addition to a set of custom sniffs.
Unfortunately (but understandably), many of the messages make reference to
WordPress VIP as a platform, as the standard assumes that the code will target
that hosting platform.

We also include many hand-picked additions from the `SlevomatCodingStandard` and
some a few adapted from the `PSR12NeutronRuleset`
[[link](https://github.com/szepeviktor/phpcs-psr-12-neutron-hybrid-ruleset)].

In previous versions, we extended the Doctrine coding standard, but it was too
opinionated and resulted in an endless back-and-forth disagreement between
`php-cs-fixer` and `phpcbf`.  Despite our efforts to counteract that behavior,
the result of applying fixes with similar goals often differed slightly.

## Type-safety: PHPStan (`.phpstan.neon.dist`)

Each project must pass Level 0 checks at minimum.  Upon initial introduction of
PHPStan to a project, start with Level 0, then gradually increase.  As far as we
can tell, Level 8 is the highest achievable level in a WordPress context.  Level
9 essentially prohibits the usage of mixed types.

## Miscellaneous

We also include a `biome.json` file here for project-internal usage.  The
`biome.json` here can serve as a good starting point for other projects, but currently
this package is orientated towards PHP coverage only.

The `just` (`//.justfile`, `//.config/just`), `pre-commit`
(`//nix/git-hooks.nix`), and `treefmt` (`//nix/treefmt.nix`) configurations are
also decent starting points, but this project does not aim to provide a
general-purpose template for those tools.

This project does not commit a `composer.lock` in order to prevent downstream
dependency hell.

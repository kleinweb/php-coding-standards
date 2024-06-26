# Changelog
All notable changes to this project will be documented in this file. See [conventional commits](https://www.conventionalcommits.org/) for commit guidelines.

- - -
## [0.5.2](https://github.com/kleinweb/php-coding-standards/compare/409b27e9f5696950bbada7ec5eaa4a1678c75d26..0.5.2) - 2024-06-26
#### Bug Fixes
- prevent ignoring all wp-content-rooted files - ([409b27e](https://github.com/kleinweb/php-coding-standards/commit/409b27e9f5696950bbada7ec5eaa4a1678c75d26)) - Chris Montgomery

- - -

## [0.5.1](https://github.com/kleinweb/php-coding-standards/compare/7c2dc23b409bb4cde1f8433b4d5fbd44b7c67162..0.5.1) - 2024-06-26
#### Bug Fixes
- **(namespaces)** remove `FullyQualifiedExceptions` sniff due to conflict - ([0edcfcc](https://github.com/kleinweb/php-coding-standards/commit/0edcfccbb04d9e72c999cd7b1f1599bf88dbbab5)) - Chris Montgomery
- **(variables)** remove redundant slevomat `UnusedVariable` sniff - ([7c2dc23](https://github.com/kleinweb/php-coding-standards/commit/7c2dc23b409bb4cde1f8433b4d5fbd44b7c67162)) - Chris Montgomery
- exclude wp core paths - ([9d0fc1d](https://github.com/kleinweb/php-coding-standards/commit/9d0fc1d56b4354b7eb59f330bee349f67b71fa47)) - Chris Montgomery
- replace ECS with PHP-CS-Fixer - ([bf2b6b1](https://github.com/kleinweb/php-coding-standards/commit/bf2b6b1a4479043f9bf709026849bb038a8a5ed8)) - Chris Montgomery
#### Documentation
- update - ([db0a358](https://github.com/kleinweb/php-coding-standards/commit/db0a35859327ddc1dc152467ceb89e96e21da12c)) - Chris Montgomery
#### Miscellaneous Chores
- gitignore improvements - ([955acb1](https://github.com/kleinweb/php-coding-standards/commit/955acb145f68a6b746c29b62279c37685655bc6e)) - Chris Montgomery
- remove emacs file-local variables - ([dc0c557](https://github.com/kleinweb/php-coding-standards/commit/dc0c55747b2f4e8371092b2976a20782437b010b)) - Chris Montgomery
#### Style
- unfortunate formatting changes - ([b181244](https://github.com/kleinweb/php-coding-standards/commit/b1812440f3dc9573cc8edd1c32f8a0d11e3825d0)) - Chris Montgomery

- - -

## [0.5.0](https://github.com/kleinweb/php-coding-standards/compare/9e6656d6a3269ee0e8ea6f030d025033493f830a..0.5.0) - 2024-06-20
#### Bug Fixes
- **(prj)** run `just check` before releases - ([e9b2157](https://github.com/kleinweb/php-coding-standards/commit/e9b2157295d940315e372fbf5f93ff6797765507)) - Chris Montgomery
- **(prj)** add missing editorconfig - ([276a401](https://github.com/kleinweb/php-coding-standards/commit/276a40140d7b160660a6292a5bad1e0c89cba890)) - Chris Montgomery
- remove `FullyQualifiedClassNameInAnnotation` - ([c8395e7](https://github.com/kleinweb/php-coding-standards/commit/c8395e766d7885bc3cb6eff145cb8938f34f12b0)) - Chris Montgomery
- restore exclusion for non-camelCaps properties - ([20957cd](https://github.com/kleinweb/php-coding-standards/commit/20957cd4d4dd22d4cb9a47c293575e6e430f3320)) - Chris Montgomery
- account for naming convention discrepancy in VIPWPCS standards - ([293b550](https://github.com/kleinweb/php-coding-standards/commit/293b550975279f2919d69dbd73455cd5df72bfb2)) - Chris Montgomery
- restore exclusion for BraceOnSameLine - ([ca2fd46](https://github.com/kleinweb/php-coding-standards/commit/ca2fd46023fd21a1042af92e373d9f02e70b7c56)) - Chris Montgomery
- allow formatting checks + remove commented-out exclusions - ([fe92547](https://github.com/kleinweb/php-coding-standards/commit/fe92547766b65dae3bba2d53d13a730445889d94)) - Chris Montgomery
- remove parens from construct string - ([01d1073](https://github.com/kleinweb/php-coding-standards/commit/01d107309d5cffe1141672fddf00e097a5a84bd0)) - Chris Montgomery
- work around odd spaceless comment default - ([bb164d7](https://github.com/kleinweb/php-coding-standards/commit/bb164d781527213d8ade5e7d2e6fa2adf0d22aa7)) - Chris Montgomery
- exclude any default theme and `wp/` directory - ([97cd1bf](https://github.com/kleinweb/php-coding-standards/commit/97cd1bf7dde15f956e7c589986a10e4f95f05d07)) - Chris Montgomery
- remove composer.lock - ([835b8df](https://github.com/kleinweb/php-coding-standards/commit/835b8df6c840e7f1c8424de17ec80f0682f8c514)) - Chris Montgomery
#### Documentation
- update note about controversial rule - ([77d3128](https://github.com/kleinweb/php-coding-standards/commit/77d312824f1e13637c3ff8140d9b3f45290cbe81)) - Chris Montgomery
#### Features
- **(fmt)** add ecs - ([7d4380b](https://github.com/kleinweb/php-coding-standards/commit/7d4380bab074e3871020119eb6d78c675d6c76ce)) - Chris Montgomery
- **(prj)** add just tasks for release management - ([2509053](https://github.com/kleinweb/php-coding-standards/commit/25090530c35d262d37da9ab9c3325b0695a535ff)) - Chris Montgomery
- **(prj)** add justfile with maintenance helpers - ([0105804](https://github.com/kleinweb/php-coding-standards/commit/01058046717734d8efa9c316e0a950ab34a31b82)) - Chris Montgomery
- **(prj)** add local phpcs rules - ([2a94992](https://github.com/kleinweb/php-coding-standards/commit/2a94992e5a5a04b2d828372b552503711933321c)) - Chris Montgomery
- **(prj)** add biome formatter - ([4b055f8](https://github.com/kleinweb/php-coding-standards/commit/4b055f8aede1008d5a47908bc9e3d679da826334)) - Chris Montgomery
- **(repo|nix)** configure git hooks - ([dd1cfc3](https://github.com/kleinweb/php-coding-standards/commit/dd1cfc33afdd25c728370eb40ce02a82ecf4dbd9)) - Chris Montgomery
- add composer normalize - ([2399328](https://github.com/kleinweb/php-coding-standards/commit/2399328da4ebe3e3d4c9d835444b09790a9d239b)) - Chris Montgomery
- base upon `WordPressVIPGo` standard + many additions from slevomat - ([3689342](https://github.com/kleinweb/php-coding-standards/commit/368934294d15b2eb94c6ad9de10ea42bd929018f)) - Chris Montgomery
- check for excessive amounts of commented-out-code - ([2398e83](https://github.com/kleinweb/php-coding-standards/commit/2398e83c097bdfcf5af92bdfaec215456b3ac3bd)) - Chris Montgomery
- run common variable analysis rules - ([9d03409](https://github.com/kleinweb/php-coding-standards/commit/9d034096bcdd2a25bfae4b924e934d3d4544b63e)) - Chris Montgomery
#### Miscellaneous Chores
- **(deps)** update renovate config - ([c260bf0](https://github.com/kleinweb/php-coding-standards/commit/c260bf0427c531fce41aebae9e4fd99f74d36000)) - Chris Montgomery
- **(deps:nix)** update flake inputs - ([016dfee](https://github.com/kleinweb/php-coding-standards/commit/016dfeeeb55f03433b0afe5877b31ec4ad11f46e)) - Chris Montgomery
- **(devshell)** remove unused formatters - ([e15e93c](https://github.com/kleinweb/php-coding-standards/commit/e15e93c53494509e369e559fe5de8976e045f503)) - Chris Montgomery
- **(devshell)** update .envrc - ([8b723e1](https://github.com/kleinweb/php-coding-standards/commit/8b723e1569ed6eed6ae661c2e3eb6fc3bcb836c2)) - Chris Montgomery
- **(nix)** add nixpkgs master as `nixpkgs-trunk` - ([1a8c967](https://github.com/kleinweb/php-coding-standards/commit/1a8c967113b092224e87855ce630747202a22db9)) - Chris Montgomery
- **(prj)** add phpactor config - ([c18dfa8](https://github.com/kleinweb/php-coding-standards/commit/c18dfa8a8e298307c8774978ab7faf5bce2ffddc)) - Chris Montgomery
- **(repo)** update settings - ([1d7d23e](https://github.com/kleinweb/php-coding-standards/commit/1d7d23e20073000c8eb80d497ac5d22c70cf9c88)) - Chris Montgomery
- update nix flake inputs - ([39a4750](https://github.com/kleinweb/php-coding-standards/commit/39a47506e179982478477491aea0e87da44003c5)) - Chris Montgomery
- update readme + copyright notices - ([954c4ea](https://github.com/kleinweb/php-coding-standards/commit/954c4ead7376b3998b6f6b58a0599e7b6a8847d3)) - Chris Montgomery
- update note about WP-VIP Coding Standards - ([bbed1b3](https://github.com/kleinweb/php-coding-standards/commit/bbed1b3acd88dc54bd4efdbbe422a7ec80649c68)) - Chris Montgomery
- remove outdated comment - ([4e00063](https://github.com/kleinweb/php-coding-standards/commit/4e0006321169cbed3443c5c8cc7cfb6ecfb5f1c2)) - Chris Montgomery
- require php 8.1 - ([00716cd](https://github.com/kleinweb/php-coding-standards/commit/00716cd40d1e25f2441b4d10bd1d61fbe1e7597e)) - Chris Montgomery
- updates - ([d721d97](https://github.com/kleinweb/php-coding-standards/commit/d721d971b6563043cd1bef15464bf9fb83a29fab)) - Chris Montgomery
- add github repo settings configuration - ([9e6656d](https://github.com/kleinweb/php-coding-standards/commit/9e6656d6a3269ee0e8ea6f030d025033493f830a)) - Chris Montgomery
#### Tests
- disable some friendly exclusions - ([3a911fb](https://github.com/kleinweb/php-coding-standards/commit/3a911fba8e13bc2b8aa151b49e2fffb5d228914d)) - Chris Montgomery

- - -

## [0.4.1](https://github.com/kleinweb/php-coding-standards/compare/0.4.0..0.4.1) - 2023-08-04
#### Bug Fixes
- ignore newly-observed array brace spacing rule - ([24e7666](https://github.com/kleinweb/php-coding-standards/commit/24e7666798cf84b19cd322bb48773300ece2f67e)) - Chris Montgomery

- - -

## [0.4.0](https://github.com/kleinweb/php-coding-standards/compare/0.3.2..0.4.0) - 2023-08-04
#### Miscellaneous Chores
- **(deps)** composer update - ([6d99d17](https://github.com/kleinweb/php-coding-standards/commit/6d99d17994a5a032392d5eee2e761f82e1a850db)) - Chris Montgomery
- **(deps)** update flake inputs - ([3413c51](https://github.com/kleinweb/php-coding-standards/commit/3413c51996e0da75c87e7146fd5ce369b65303ef)) - Chris Montgomery

- - -

## [0.3.2](https://github.com/kleinweb/php-coding-standards/compare/0.3.1..0.3.2) - 2023-07-26
#### Bug Fixes
- **(release)** use correct tag push syntax - ([338d80e](https://github.com/kleinweb/php-coding-standards/commit/338d80e7304301494a2f732c3132ad4e2128238d)) - Chris Montgomery

- - -

## [0.3.1](https://github.com/kleinweb/php-coding-standards/compare/0.3.0..0.3.1) - 2023-07-26
#### Bug Fixes
- **(release)** push after bump - ([3e49125](https://github.com/kleinweb/php-coding-standards/commit/3e4912562cfcbfa2fca2b1601cb049061c6e1780)) - Chris Montgomery

- - -

## [0.3.0](https://github.com/kleinweb/php-coding-standards/compare/0.1.0..0.3.0) - 2023-07-26

- - -

Changelog generated by [cocogitto](https://github.com/cocogitto/cocogitto).
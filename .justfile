# SPDX-FileCopyrightText: 2022-2024 Temple University <kleinweb@temple.edu>
# SPDX-License-Identifier: GPL-3.0-or-later

###: <https://just.systems/man/en/>

## Global constants
prj-root := justfile_directory()
# FIXME: not yet released -- probably will be v1.30.0
# today := datetime('%F')

## OS commands
open := if os_family() == "linux" { "xdg-open" } else { "open" }

## Project owner metadata
owner-name := 'Temple University'
owner-email := 'kleinweb@temple.edu'
owner-attr := owner-name + ' <' + owner-email + '>'

## Project metadata
prj-slug := env('KWG_PROJECT_SLUG')
prj-title := env('KWG_PROJECT_TITLE')

# Display a list of available tasks as the default command
default:
  @just --choose

[group: "qa"]
[doc: "Check for (non-stylistic) linting issues on project files"]
lint:
  -biome lint {{prj-root}}
  -composer lint

[group: "qa"]
[doc: "Write *all* formatter+fixer changes to project files"]
fix:
  biome check --apply {{prj-root}}
  composer fix

[group: "qa"]
[doc: "Write _safe_ formatter changes to project files"]
fmt:
  biome format --write {{prj-root}}
  composer ecs -- --fix

[group: "php"]
[doc: "Rebuild the Phpactor project index"]
reindex:
  phpactor index:build --reset

_stub-add path base target:
  jq --arg stub {{join(base, path)}} \
    '."indexer.stub_paths" += [$stub]' \
    {{target}} \
  | sponge {{target}}

[group: "php"]
[doc: "Generate PHP stubs for files in the given directory"]
stubify src:
  nix run .\#php-stubs-generator -- \
    --out={{ join(prj-root, "packages", file_stem(src) + "-stubs", file_stem(src) + ".stubs.php") }} \
    {{src}}

[group: "php"]
[doc: "Add the specified PHP stub paths to config files"]
stub-add path: (_stub-add path prj-root ".phpactor.json") (_stub-add path "/path/to/project" ".phpactor.json.example")

###: LICENSING =====================================================================================

alias l-default := l-gpl

[group: "licensing"]
[doc: "Annotate all plaintext note files with the documentation license"]
l-docs:
  fd --glob '**/*.{md,mdx,markdown,org}' -X \
    just l-cc {}

[group: "licensing"]
_annotate license +FILES:
  reuse annotate -l '{{license}}' -c '{{owner-attr}}' --template=compact --skip-existing {{FILES}}

[group: "licensing"]
[doc: "License the specified files as GPL-3.0-or-later"]
l-gpl +FILES: (_annotate 'GPL-3.0-or-later' FILES)

[group: "licensing"]
[doc: "Dual-license the specified files as GPL/MIT"]
l-dual colicensor +FILES: (_annotate 'GPL-3.0-or-later AND MIT' ('-c ' + quote(colicensor) + ' ' + FILES))

[group: "licensing"]
[doc: "License the specified files as non-commercial docs"]
l-cc +FILES: (_annotate  'CC-BY-NC-SA-4.0' FILES)

[group: "licensing"]
[doc: "Release the specified files into the public domain"]
l-public-domain +FILES: (_annotate  'CC0-1.0' FILES)

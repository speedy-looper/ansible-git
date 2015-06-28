# Git

Install git package. Can onfigure `.gitconfig` if defined as bellow.

[Official Website](http://git-scm.com/).

## Requirements

- Redhat family.
- Debian family.
- Darwin (OSX) with [homebrew](http://brew.sh/) package manager installed.

## Role Variables

### `__users__`

Unset by default, dictionary should defined like this:

```yaml

__users__:
  [username]:
    [option]: [value]
```

**Options**

| Option                   | Type     | Comments                                                    |
|--------------------------|----------|-------------------------------------------------------------|
| git_gitconfig_content    | string   | Lines to add in `~/.gitconfig`. Or use option bellow to copy files directly.|
| git_gitfiles_directory   | string   | Directory containing git files to upload in user directory. |

## Example Playbook

The following playbook will install prezto for root user.

``` yaml
# ./tests/main.yml

- hosts: localhost
  remote_user: root
  vars:
    __users__:
      root:
        prezto_install: Yes
```

Run test, make sure ansible-zsh and ansible-prezto are in your role path.

## Run Tests

Require [serverspec](http://serverspec.org/), check [.travis.yml](.travis.yml) for details.

## Licence

MIT © [Maxime Loliée](http://loliee.com/)
# Ansible Role: ZSH

Install git package. Can configure `.gitconfig` if defined as bellow.

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
| git_gitconfig_content    | string   | Lines to add in `~/.gitconfig`. Or others options.          |
| git_gitconfig_url        | string   | Download url of `.gitconfig` file.                          |
| git_gitfiles_directory   | string   | Directory containing git files to upload in user directory. |

## Example Playbook

The following playbook will install prezto for root user.

``` yaml
---
# ./tests/playbooks/main.yml

- hosts: localhost
  remote_user: root
  vars:
    __users__:
      mloliee:
        git_gitfiles_directory: ./files/git/
  roles:
    - ansible-git

```

Run test, make sure ansible-zsh and ansible-prezto are in your role path.

## Run Tests

Require [serverspec](http://serverspec.org/), check [.travis.yml](.travis.yml) for details.

## Licence

MIT © [Maxime Loliée](https://github.com/loliee/)

# Ansible role for Dokku

Setup [Dokku](http://dokku.viewdocs.io/dokku/).

## Requirements

- Debian
- Ubuntu

## Role Variables

- `dokku_vhost_enable`: Enable vhost-based deployments. Value of debconf `dokku/vhost_enable`. (boolean)
- `dokku_web_config`: Enable the web-based config page. Value of debconf `dokku/web_config`. (boolean)
- `dokku_hostname`: Hostname or IP for server. Value of debconf `dokku/hostname`. (string)
- `dokku_skip_key_file`: Skip key file requirement. Value of debconf `dokku/skip_key_file`. (boolean)
- `dokku_key_file`: SSH public key file for initial user. Value of debconf `dokku/key_file`. (string)

Note: boolean value should be `"true"` or `"false"` in string of yaml.
If use `true` (`yes`), `false` (`no`) or something similar, ansible reports `changed` every provision.

- `dokku_docker_ce_channel`: If set, use Docker CE channel, or use `docker-engine`. `"stable"`, `"edge"`, or `~` (null).

## Dependencies

None.

## Example Playbook

Example:

    - hosts: servers
      become: yes
      roles:
         - znz.dokku

## License

MIT License

andrewrothstein.kubelogin
=========

![Build Status](https://github.com/andrewrothstein/ansible-kubelogin/actions/workflows/build.yml/badge.svg)

Installs [kubelogin](https://github.com/Azure/kubelogin)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.kubelogin
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>

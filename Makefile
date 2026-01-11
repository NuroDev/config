.PHONY: default

default:
	ansible-playbook playbook.yml --ask-become-pass

install:
	ansible-galaxy install -r requirements.yml

pkgs:
	ansible-playbook playbook.yml --ask-become-pass --tags "packages"

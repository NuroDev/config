.PHONY: default install npm

default:
	ansible-playbook playbook.yml --ask-become-pass

install:
	ansible-galaxy install -r requirements.yml

npm:
	ansible-playbook playbook.yml --tags npm

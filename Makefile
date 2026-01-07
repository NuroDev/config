.PHONY: default

default:
	ansible-playbook playbook.yml --ask-become-pass

install:
	ansible-galaxy install -r requirements.yml

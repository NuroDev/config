.PHONY: agents default install npm

default:
	ansible-playbook playbook.yml --ask-become-pass

agents:
	ansible-playbook playbook.yml --tags agents

install:
	ansible-galaxy install -r requirements.yml

npm:
	ansible-playbook playbook.yml --tags npm

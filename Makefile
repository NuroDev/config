.PHONY: agents default dock install npm

default:
	ansible-playbook playbook.yml --ask-become-pass

agents:
	ansible-playbook playbook.yml --tags agents

dock:
	ansible-playbook playbook.yml --tags dock
	killall Dock

install:
	ansible-galaxy install -r requirements.yml

npm:
	ansible-playbook playbook.yml --tags npm

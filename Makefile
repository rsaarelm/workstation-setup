all: tinkerboard.yml requirements
	ansible-playbook tinkerboard.yml

requirements: requirements.yml
	ansible-galaxy install -r requirements.yml

dotfiles: tinkerboard.yml requirements
	ansible-playbook tinkerboard.yml --tags "dotfiles"

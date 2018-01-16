all: workstation.yml requirements vm
	ansible-playbook workstation.yml

requirements: requirements.yml
	ansible-galaxy install -r requirements.yml

vm:
	vagrant up

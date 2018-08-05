playbook   ?= playbook
env        ?= inventory
vars       ?= vars
vpc_id     ?= vpc_id
public_net_id ?= public_net_id
private_net_id ?= private_net_id

.PHONY: full-stack
full-stack: 
	@env=$(env) ansible-playbook --inventory-file="$(env)" -e "@$(vars).yml" "$(playbook).yml"

.PHONY: create-ms-ad 
create-ms-ad:
	@env=$(env) ansible-playbook --inventory-file="$(env)" -e "@$(vars).yml" --tags create-ms-ad "$(playbook).yml"


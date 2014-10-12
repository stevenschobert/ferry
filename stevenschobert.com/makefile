deploy:
	@ansible-playbook -i ./ansible/inventory ./ansible/deploy.yml

configure:
	@ansible-playbook -i ./ansible/inventory ./ansible/configure.yml

provision:
	@ansible-playbook -i ./ansible/inventory ./ansible/provision.yml

servers:
	@cd terraform && terraform apply
	@../util/terraform_inventory ./terraform/terraform.tfstate > ./ansible/inventory

preview:
	@cd terraform && terraform plan

.PHONY: preview servers deploy provision configure

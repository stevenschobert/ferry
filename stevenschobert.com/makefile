deploy:
	@ansible-playbook -i ./ansible/inventory ./ansible/deploy.yml

servers:
	@cd terraform && terraform apply
	@../util/terraform_inventory ./terraform/terraform.tfstate > ./ansible/inventory

preview:
	@cd terraform && terraform plan

.PHONY: preview servers deploy

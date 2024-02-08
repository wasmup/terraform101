TARGETS = init plan apply destroy

.PHONY: $(TARGETS)

init:
    terraform init

plan:
    terraform plan

apply:
    terraform apply

destroy:
    terraform destroy

clean:
    -rm -rf .terraform/ .terraform.lock.hcl

help:
    @echo "Available targets:"
    @echo ""
    @echo "  init     - Initializes the Terraform project."
    @echo "  plan     - Creates a plan of changes Terraform will make."
    @echo "  apply    - Applies the planned changes to create infrastructure."
    @echo "  destroy  - Destroys the managed infrastructure."
    @echo "  clean    - Removes temporary Terraform files."
    @echo "  help     - Displays this help message."

# terraform-aws-organizational-unit

Terraform module to create an Organizational Unit (OU) in AWS Organizations.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.8.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.51.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.51.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_organizations_organizational_unit.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organizational_unit) | resource |
| [aws_organizations_policy_attachment.policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy_attachment) | resource |
| [aws_organizations_organization.org](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attached_policies"></a> [attached\_policies](#input\_attached\_policies) | List of policy IDs to attach to the organizational unit. | `list(string)` | `[]` | no |
| <a name="input_organizational_unit_name"></a> [organizational\_unit\_name](#input\_organizational\_unit\_name) | The name of the organizational unit | `string` | n/a | yes |
| <a name="input_parent_org_id"></a> [parent\_org\_id](#input\_parent\_org\_id) | The ID of the parent organizational unit. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_organizational_unit_id"></a> [organizational\_unit\_id](#output\_organizational\_unit\_id) | The ID of the created organizational unit. |
<!-- END_TF_DOCS -->
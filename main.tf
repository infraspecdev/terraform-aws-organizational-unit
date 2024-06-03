data "aws_organizations_organization" "org" {}

resource "aws_organizations_organizational_unit" "this" {
  name      = var.organizational_unit_name
  parent_id = var.parent_org_id != "" ? var.parent_org_id : data.aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_policy_attachment" "policy_attachment" {
  count     = length(var.attached_policies)
  policy_id = var.attached_policies[count.index]
  target_id = aws_organizations_organizational_unit.this.id
}

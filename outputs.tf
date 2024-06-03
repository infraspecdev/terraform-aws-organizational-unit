output "organizational_unit_id" {
  description = "The ID of the created organizational unit."
  value       = aws_organizations_organizational_unit.this.id
}

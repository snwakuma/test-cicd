
output "vpc_id" {
  value = aws_vpc.this.id
}

output "dns_name" {
  value = var.dns_name
}


# output "public_subnet_ids" {
#   value = ""
# }

# output "priavate_subnet_ids" {
#   value = ""
# }

# output "database_subnet_ids" {
#   value = ""
# }
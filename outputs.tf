output "carros_table_name" {
  value       = aws_dynamodb_table.carros[*].name
  description = "The name of the 'carros' DynamoDB table."
}

output "carros_table_arn" {
  value       = aws_dynamodb_table.carros[*].arn
  description = "The ARN of the 'carros' DynamoDB table."
}
    
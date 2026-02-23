output "cloudfront_url" {
  value       = "https://${aws_cloudfront_distribution.site.domain_name}"
  description = "Open this URL to view the hosted static webpage"
}

output "lambda_health_url" {
  value       = aws_lambda_function_url.health.function_url
  description = "Serverless backend health endpoint"
}

output "s3_website_url" {
  value       = aws_s3_bucket_website_configuration.site.website_endpoint
  description = "Direct S3 website endpoint"
}

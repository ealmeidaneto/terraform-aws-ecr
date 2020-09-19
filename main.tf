resource "aws_ecr_repository" "repo" {
  name                 = var.repo_name
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = var.scan_image_on_push
  }

  dynamic "encryption_configuration" {
    for_each = var.encryption_configuration
    content {
      encryption_type = lookup(encryption_configuration.value, "encryption_type", null)
      kms_key         = lookup(encryption_configuration.value, "kms_key", null)
    }
  }


  tags = var.tags
}
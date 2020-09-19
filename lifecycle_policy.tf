resource "aws_ecr_lifecycle_policy" "lifecycle_policy" {

  count      = length(var.lifecycle_policy) > 1 ? 1 : 0
  repository = var.repo_name
  policy     = var.lifecycle_policy
  depends_on = [aws_ecr_repository.repo]

}
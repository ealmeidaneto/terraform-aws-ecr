resource "aws_ecr_repository_policy" "repo_policy" {
  count      = length(var.repository_policy) > 1 ? 1 : 0
  repository = var.repo_name

  policy = var.repository_policy

  depends_on = [aws_ecr_repository.repo]

}
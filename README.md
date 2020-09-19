# Terraform ECR Module
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| aws | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| encryption\_configuration | (Optional) Encryption configuration for the repository. | `list(map(any))` | `[]` | no |
| image\_tag\_mutability | (Optional) The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. Defaults to MUTABLE. | `string` | `"MUTABLE"` | no |
| lifecycle\_policy | (Required) The policy document. This is a JSON formatted string. See more details about Policy Parameters in the official AWS docs. For more information about building IAM policy documents with Terraform, see the AWS IAM Policy Document Guide(https://learn.hashicorp.com/terraform/aws/iam-policy). | `string` | `""` | no |
| repo\_name | (Required) Name of the repository. | `string` | n/a | yes |
| repository\_policy | (Required) The policy document. This is a JSON formatted string. | `string` | `""` | no |
| scan\_image\_on\_push | (Optional) Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. | `bool` | `true` | no |
| tags | (Optional) A map of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| registry\_id | The registry ID where the repository was created. |
| repo\_arn | Full ARN of the repository. |
| repository\_url | The URL of the repository (in the form aws\_account\_id.dkr.ecr.region.amazonaws.com/repositoryName). |

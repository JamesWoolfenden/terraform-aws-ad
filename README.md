# terraform-aws-ad

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-ad/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-ad)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-ad.svg)](https://github.com/JamesWoolfenden/terraform-aws-ad/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-ad.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-ad/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-ad/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-ad&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-ad/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-ad&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module -

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is just a very basic example.

![alt text](./diagram/ad.png)

Include **module.ad.tf** this repository as a module in your existing terraform code:

```terraform
module "ad" {
  source      = "JamesWoolfenden/ad/aws"
  version     = "0.0.4"
  common_tags = var.common_tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_directory_service_directory.ad](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/directory_service_directory) | resource |
| [aws_directory_service_log_subscription.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/directory_service_log_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ad"></a> [ad](#input\_ad) | Adconnector | `map` | <pre>{<br>  "customer_dns_ips": [<br>    "A.B.C.D"<br>  ],<br>  "customer_username": "Admin",<br>  "edition": "",<br>  "name": "corp.notexample.com",<br>  "size": "Small",<br>  "subnet_ids": [<br>    "",<br>    ""<br>  ],<br>  "type": "ADConnector",<br>  "vpc_id": ""<br>}</pre> | no |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | n/a | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | n/a | `string` | n/a | yes |
| <a name="input_vpc"></a> [vpc](#input\_vpc) | n/a | `map` | <pre>{<br>  "subnet_ids": "",<br>  "vpc_id": ""<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ad"></a> [ad](#output\_ad) | n/a |
| <a name="output_logs"></a> [logs](#output\_logs) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Policy

This is the policy required to build this project:

<!-- BEGINNING OF PRE-COMMIT-PIKE DOCS HOOK -->
The Policy required is:

```json
{
    "Version": "2012-10-17",
    "Statement": {
        "Effect": "Allow",
        "Action": [
            "kms:CreateKey",
            "kms:DescribeKey",
            "kms:EnableKeyRotation",
            "kms:GetKeyPolicy",
            "kms:GetKeyRotationStatus",
            "kms:ListResourceTags",
            "kms:PutKeyPolicy",
            "kms:ScheduleKeyDeletion",
            "logs:AssociateKmsKey",
            "logs:CreateLogGroup",
            "logs:DeleteLogGroup",
            "logs:DeleteRetentionPolicy",
            "logs:DescribeLogGroups",
            "logs:DisassociateKmsKey",
            "logs:ListTagsLogGroup",
            "logs:PutRetentionPolicy",
            "logs:TagLogGroup",
            "logs:UntagLogGroup"
        ],
        "Resource": "*"
    }
}

```
<!-- END OF PRE-COMMIT-PIKE DOCS HOOK -->
## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-ad/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-ad/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2022 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150

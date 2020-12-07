# terraform-aws-ad

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-ad/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-ad)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-ad.svg)](https://github.com/JamesWoolfenden/terraform-aws-ad/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

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

| Name | Version |
|------|---------|
| aws | 3.20.0 |

## Providers

| Name | Version |
|------|---------|
| aws | 3.20.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ad | Adconnector | `map` | <pre>{<br>  "customer_dns_ips": [<br>    "A.B.C.D"<br>  ],<br>  "customer_username": "Admin",<br>  "edition": "",<br>  "name": "corp.notexample.com",<br>  "size": "Small",<br>  "subnet_ids": [<br>    "",<br>    ""<br>  ],<br>  "type": "ADConnector",<br>  "vpc_id": ""<br>}</pre> | no |
| common\_tags | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| password | n/a | `string` | n/a | yes |
| vpc | n/a | `map` | <pre>{<br>  "subnet_ids": "",<br>  "vpc_id": ""<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| ad | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

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

Copyright � 2019-2020 James Woolfenden

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
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-ad&url=https://github.com/JamesWoolfenden/terraform-aws-ad
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-ad&url=https://github.com/JamesWoolfenden/terraform-aws-ad
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-ad
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-ad
[share_email]: mailto:?subject=terraform-aws-ad&body=https://github.com/JamesWoolfenden/terraform-aws-ad

# https://github.com/terraform-linters/tflint/blob/master/docs/user-guide/config.md
# https://github.com/terraform-linters/tflint-ruleset-aws/releases

plugin "aws" {
    enabled = true
    version = "0.13.2"
    source  = "github.com/terraform-linters/tflint-ruleset-aws"
}
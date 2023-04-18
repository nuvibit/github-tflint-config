# config {
#   module = true # Inspect module calls
# }

# Enable TFLint ruleset plugin for aws (200+ rules)
plugin "aws" {
    enabled = true
    version = "0.22.1"
    source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

# Rules which are enabled by default, are not listed here, see
# https://github.com/terraform-linters/tflint-ruleset-terraform/tree/main/docs/rules#rules

# Disallow // comments in favor of #
rule "terraform_comment_syntax" {
  enabled = true
}

# Disallow legacy dot index syntax.
rule "terraform_deprecated_index" {
  enabled = true
}

# Disallow deprecated (0.11-style) interpolation.
rule "terraform_deprecated_interpolation" {
  enabled = true
}

# Disallow output declarations without description.
rule "terraform_documented_outputs" {
  enabled = true
}

# Disallow variable declarations without description.
rule "terraform_documented_variables" {
  enabled = true
}

# Disallow comparisons with [] when checking if a collection is empty.
rule "terraform_empty_list_equality" {
  enabled = true
}

# Disallow specifying a git or mercurial repository as a module source without pinning to a version.
rule "terraform_module_pinned_source" {
  enabled = true
}

# Checks that Terraform modules sourced from a registry specify a version.
rule "terraform_module_version" {
  enabled
}

# Enforce naming conventions.
rule "terraform_naming_convention" {
  enabled = true

  custom = "^ntc_[a-zA-Z]+([_-][a-zA-Z]+)*$"
}

# Require that all providers have version constraints through required_providers.
rule "terraform_required_providers" {
  enabled = true
}

# Disallow terraform declarations without required_version.
rule "terraform_required_version" {
  enabled = true
}

# Ensure that a module complies with the Terraform Standard Module Structure
rule "terraform_standard_module_structure" {
  enabled = true
}

# Disallow variable declarations without type.
rule "terraform_typed_variables" {
  enabled = true
}

# Disallow variables, data sources, and locals that are declared but never used.
rule "terraform_unused_declarations" {
  enabled = true
}

# Check that all required_providers are used in the module
rule "terraform_unused_required_providers" {
  enabled = true
}

# terraform.workspace should not be used with a "remote" backend with remote execution
rule "terraform_workspace_remote" {
  enabled = true
}

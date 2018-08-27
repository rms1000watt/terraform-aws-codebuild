# Terraform AWS Codebuild

## Introduction

Terraform module to deploy Codebuild

## Contents

- [Usage](#usage)
- [Options](#options)
- [TODO](#todo)

## Usage

### Build Github Project

```hcl
module "codebuild" {
  source = "rms1000watt/codebuild/aws"

  github_repo = "https://github.com/rms1000watt/dummy-golang-project.git"
}
```

## Options

```hcl
module "codebuild" {
  source = "rms1000watt/codebuild/aws"

  project_name        = "" // optional: (default: "${directory_name}")
  project_description = "" // optional: (default: "")
  build_spec          = "" // optional: (default: "buildspec.yml") This is the file in the repo that is being built
  build_timeout       = "" // optional: (default: "60") This is in minutes
  tags                = {} // optional: (default: {})
  artifacts_type      = "" // optional: (default: "NO_ARTIFACTS")

  // Build image specifics
  builder_size  = ""    // optional: (default: "small")
  builder_image = ""    // optional: (default: "aws/codebuild/docker:17.09.0") See: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-available.html for more details
  builder_role_arn = "" // optional: (default: "")

  // Github specific (must define github_repo if building from github)
  github_repo        = "" // optional: (default: "")
  github_clone_depth = "" // optional: (default: "1")
}
```

## TODO

- [ ] Allow user to overwrite policy
- [ ] Intergrate with CodePipeline (CodeDeploy) [Cloud Posse example](https://github.com/cloudposse/terraform-aws-ecs-codepipeline/blob/master/main.tf#L192-L259)

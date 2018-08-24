# Terraform AWS Codebuild

## Introduction

Terraform module to deploy Codebuild

## Contents

- [Usage](#usage)
- [Options](#options)

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

  project_name        = ""   // optional: (default: "${directory_name}")
  project_description = ""   // optional: (default: "")
  build_spec          = ""   // optional: (default: "buildspec.yml")
  build_timeout       = ""   // optional: (default: "60")
  tags                = {}   // optional: (default: {})

  // Build image specifics
  builder_size  = "" // optional: (default: "small")
  builder_image = "" // optional: (default: "aws/codebuild/docker:17.09.0") See: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-available.html for more details

  // Github specific (must define github_repo if building from github)
  github_repo        = "" // optional: (default: "")
  github_clone_depth = "" // optional: (default: "1")
}
```
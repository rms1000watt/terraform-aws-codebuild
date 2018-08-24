// TODO: Other iterations
// resource "aws_codebuild_project" "github_ec2"

resource "aws_codebuild_project" "github_docker" {
  name          = "${local.project_name}"
  description   = "${var.project_description}"
  build_timeout = "${var.build_timeout}"
  service_role  = "${aws_iam_role.0.arn}"
  tags          = "${var.tags}"

  source {
    type            = "GITHUB"
    location        = "${var.github_repo}"
    git_clone_depth = "${var.github_clone_depth}"
  }

  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    compute_type = "${local.compute_type}"
    image        = "${var.builder_image}"
    type         = "LINUX_CONTAINER"

    environment_variable {
      name  = "${local.env_key_0}"
      value = "${local.env_val_0}"
    }

    environment_variable {
      name  = "${local.env_key_1}"
      value = "${local.env_val_1}"
    }

    environment_variable {
      name  = "${local.env_key_2}"
      value = "${local.env_val_2}"
    }

    environment_variable {
      name  = "${local.env_key_3}"
      value = "${local.env_val_3}"
    }

    environment_variable {
      name  = "${local.env_key_4}"
      value = "${local.env_val_4}"
    }

    environment_variable {
      name  = "${local.env_key_5}"
      value = "${local.env_val_5}"
    }

    environment_variable {
      name  = "${local.env_key_6}"
      value = "${local.env_val_6}"
    }

    environment_variable {
      name  = "${local.env_key_7}"
      value = "${local.env_val_7}"
    }

    environment_variable {
      name  = "${local.env_key_8}"
      value = "${local.env_val_8}"
    }

    environment_variable {
      name  = "${local.env_key_9}"
      value = "${local.env_val_9}"
    }
  }

  count = "${local.github_count + local.docker_count == 2 ? 1 : 0}"
}

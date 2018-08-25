variable "build_spec" {
  description = "Build spec file"
  default     = "buildspec.yml"
}

variable "project_name" {
  description = "Name for the project"
  default     = ""
}

variable "github_repo" {
  description = "Github repo to build from"
  default     = ""
}

variable "github_clone_depth" {
  description = "Clone depth for github"
  default     = "1"
}

variable "project_description" {
  description = "Optional description for project"
  default     = ""
}

variable "tags" {
  description = "Tags for the codebuild project"

  default {
    Author = "rms1000watt"
  }
}

variable "build_timeout" {
  description = "Time in minutes before timing out on a build"
  default     = "60"
}

variable "builder_size" {
  description = "Size for the builder image (small, medium, large)"
  default     = "small"
}

variable "env_keys" {
  description = "Array of env var keys"
  default     = [""]
}

variable "env_vals" {
  description = "Array of env var vals"
  default     = [""]
}

variable "builder_image" {
  description = "Docker image for the builder container"
  default     = "aws/codebuild/docker:17.09.0"
}

provider "aws" {
  region = "us-west-2"
}

module "codebuild" {
  source = "../.."

  github_repo = "https://github.com/rms1000watt/dummy-golang-project.git"
}

output "id" {
  value = "${module.codebuild.id}"
}

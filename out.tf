output "github_id" {
  value = "${aws_codebuild_project.github.*.id}"
}

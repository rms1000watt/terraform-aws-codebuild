resource "aws_iam_role" "0" {
  name               = "${local.project_name}"
  assume_role_policy = "${file("role-codebuild.json")}"
}

resource "aws_iam_role_policy" "0" {
  role   = "${aws_iam_role.0.name}"
  policy = "${file("policy-codebuild.json")}"
}

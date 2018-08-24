resource "aws_iam_role" "0" {
  name               = "${local.project_name}"
  assume_role_policy = "${file("${path.module}/role-codebuild.json")}"
}

resource "aws_iam_role_policy" "0" {
  role   = "${aws_iam_role.0.name}"
  policy = "${file("${path.module}/policy-codebuild.json")}"
}

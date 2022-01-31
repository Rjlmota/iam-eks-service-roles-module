# Policy
data "aws_iam_policy_document" "policy_document" {
  statement {
    actions = var.actions_list
    resources = var.resources_list
    effect = "Allow"
  }

}

resource "aws_iam_policy" "role_policy" {
  name        = "${var.cluster_name}-${var.service_role_name}-policy"
  path        = "/"
  description = "Policy for ${var.service_role_name} role"

  policy = data.aws_iam_policy_document.policy_document.json
}


resource "aws_iam_role" "service_role" {
  name               = "${var.cluster_name}-${var.service_role_name}"
  assume_role_policy = data.aws_iam_policy_document.role_assume.json
}

resource "aws_iam_role_policy_attachment" "policy_attachment" {
  role       = aws_iam_role.service_role.name
  policy_arn = aws_iam_policy.role_policy.arn
}
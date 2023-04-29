resource "aws_iam_role_policy" "test_policy" {
  name = "test_policy"
  role = aws_iam_role.test_role.id

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = file("iam/cw-log-policy.json")
}

resource "aws_iam_role" "test_role" {
  name = "test_role"

  assume_role_policy = file("iam/lambda-assume-policy.json")
}


// lambda

/* resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = "${file("iam/cw-log-policy.json")}"
} */

resource "aws_lambda_function" "test_lambda" {
  # If the file is not in the current working directory you will need to include a
  # path.module in the filename.
  filename      = local.location
  function_name = "function_name"
  role          = aws_iam_role.test_role.arn
  handler       = "welcome.hello"


  #source_code_hash = filebase64sha256(local.location)

  runtime = "python3.9"


}

# Archive a single file.

data "archive_file" "init" {
  type        = "zip"
  source_file = "welcome.py"
  output_path = local.location
}

locals {
  location = "output/welcomee.zip"
}

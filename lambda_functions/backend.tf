### Backend ###
# S3
###############

terraform {
  backend "s3" {
    bucket = "khatrig-githubaction"
    key = "lambda-flutter-testing.tfstate"
    region = "us-east-1"
  }
}

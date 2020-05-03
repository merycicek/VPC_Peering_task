terraform {
    backend "s3" {
    bucket = "state-class-cicek"
    key    = "path/to/my/key"
    region = "us-east-2"
  }
}
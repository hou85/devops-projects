provider "aws" {
  region = "us-west-2"
}

module "lb-asg" {
  source        = "../modules/lb-asg"
  subnets       = ["subnet-0b0c1bcad9b166855", "subnet-0483f6ad34fdac658", "subnet-02212964db92264f8"]
  ami_id        = "ami-06b7462530e837665"
  instance_type = "t2.small"
  key_name      = "lab"
  environment   = "dev"
  vpc_id        = "vpc-03334bdcf09a453ea"
}

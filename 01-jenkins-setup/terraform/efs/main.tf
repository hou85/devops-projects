provider "aws" {
  region = "us-west-2"
}

module "efs_module" {
  source = "../modules/efs"
  vpc_id     = "vpc-03334bdcf09a453ea"
  subnet_ids = ["subnet-0b0c1bcad9b166855", "subnet-0483f6ad34fdac658", "subnet-02212964db92264f8"]
}

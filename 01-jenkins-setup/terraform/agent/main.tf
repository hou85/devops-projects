provider "aws" {
  region = "us-west-2"
}

module "ec2_instance" {
  source = "../modules/ec2"

  instance_name      = "jenkins-agent"
  ami_id             = "ami-08d99a1273bfa95a7"
  instance_type      = "t2.small"
  key_name           = "lab"
  subnet_ids = ["subnet-0b0c1bcad9b166855", "subnet-0483f6ad34fdac658", "subnet-02212964db92264f8"]
  instance_count     = 1
}

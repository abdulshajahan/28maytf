resource "aws_vpc" "eusvpc" {
    cidr_block = "10.139.0.0/16"
    tags = {
      Name = "eu-svpc"
      Environment = "eu-svpcgit"
      git = "v2233"
    }
  
}
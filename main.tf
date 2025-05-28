resource "aws_vpc" "eusvpc" {
    cidr_block = "10.133.0.0/16"
    tags = {
      Name = "eu-svpc"
      Environment = "eu-svpc"
      git = "v2"
    }
  
}
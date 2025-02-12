resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "example" {
  count = 2
  vpc_id = aws_vpc.example.id
  cidr_block = count.index == 0 ? "10.0.1.0/24" : "10.0.2.0/24"
  availability_zone = count.index == 0 ? "us-west-2a" : "us-west-2b"
}

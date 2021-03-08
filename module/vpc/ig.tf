resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc.id
  
  tags = {
    Name = "${var.environment}-gw"
    Environment = "${var.environment}"
  }
}
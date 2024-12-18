resource "aws_security_group" "app1-sg01-servers" {
  name        = "app1-sg01-servers"
  description = "app1-sg01-servers"
  vpc_id      = aws_vpc.Japan_VPC.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "app1-sg01-servers"
    Service = "application1"
    Owner   = "Ninjas SWKS"
    Planet  = "Mars"
  }

}





resource "aws_security_group" "app1-sg02-LB01" {
  name        = "app1-sg02-LB01"
  description = "app1-sg02-LB01"
  vpc_id      = aws_vpc.Japan_VPC.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

/*ingress {
    description = "Secure"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }*/

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "app1-sg02-LB01"
    Service = "application1"
    Owner   = "Ninjas SWKS"
    Planet  = "Mars"
  }

}


resource "aws_security_group" "app1-sg03-syslogs" {
  name        = "app1-sg03-syslogs"
  description = "app1-sg03-syslogs"
  vpc_id      = aws_vpc.Japan_VPC.id

  ingress {
    description = "security zone"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.51.0.0/16","10.52.0.0/16", "10.30.0.0/16", "10.31.0.0/16", "10.32.0.0/16","10.33.0.0/16"]
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "app1-sg03-secure-servers"
    Service = "application1"
    Owner   = "Ninjas SWKS"
    Planet  = "Mars"
  }

}

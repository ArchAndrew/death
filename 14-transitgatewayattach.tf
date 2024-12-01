###### JAPAN ######################

resource "aws_ec2_transit_gateway" "japan_transit" {
  

description = "tg-web-backend-database"
  tags = {
    Name = "Web-Backend-Database Transit Gateway"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "public-ap-northeast-1a" {
  subnet_ids         = [aws_subnet.public-ap-northeast-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.japan_transit.id
  vpc_id             = aws_vpc.Japan_VPC.id
}

/*resource "aws_ec2_transit_gateway_vpc_attachment" "public-ap-northeast-1c" {
  subnet_ids         = [aws_subnet.public-ap-northeast-1c.id]
  transit_gateway_id = aws_ec2_transit_gateway.japan_transit.id
  vpc_id             = aws_vpc.Japan_VPC.id
}
*/
resource "aws_ec2_transit_gateway_vpc_attachment" "private-ap-northeast-1a" {
  subnet_ids         = [aws_subnet.private-ap-northeast-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.japan_transit.id
  vpc_id             = aws_vpc.Japan_VPC.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "private-ap-northeast-1c" {
  subnet_ids         = [aws_subnet.private-ap-northeast-1c.id]
  transit_gateway_id = aws_ec2_transit_gateway.japan_transit.id
  vpc_id             = aws_vpc.Japan_VPC.id
}



###### VIRGINIA  #############################################################################

resource "aws_ec2_transit_gateway" "virginia_transit" {
  

description = "tg-web-backend-database"
  tags = {
    Name = "Web-Backend-Database Transit Gateway"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "public-us-east-1a" {
  subnet_ids         = [aws_subnet.public-us-east-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.virginia_transit.id
  vpc_id             = aws_vpc.Virginia_VPC.id
}

/*resource "aws_ec2_transit_gateway_vpc_attachment" "public-us-east-1b" {
  subnet_ids         = [aws_subnet.public-us-east-1b.id]
  transit_gateway_id = aws_ec2_transit_gateway.virginia_transit.id
  vpc_id             = aws_vpc.Virginia_VPC.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "private-us-east-1a" {
  subnet_ids         = [aws_subnet.private-us-east-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.virginia_transit.id
  vpc_id             = aws_vpc.Virginia_VPC.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "private-us-east-1b" {
  subnet_ids         = [aws_subnet.private-us-east-1b.id]
  transit_gateway_id = aws_ec2_transit_gateway.virginia_transit.id
  vpc_id             = aws_vpc.Virginia_VPC.id
}
*/
resource "aws_ec2_transit_gateway_vpc_attachment" "private-storage-us-east-1a" {
  subnet_ids         = [aws_subnet.private-storage-us-east-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.virginia_transit.id
  vpc_id             = aws_vpc.Virginia_VPC.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "private-storage-us-east-1b" {
  subnet_ids         = [aws_subnet.private-storage-us-east-1b.id]
  transit_gateway_id = aws_ec2_transit_gateway.virginia_transit.id
  vpc_id             = aws_vpc.Virginia_VPC.id
}

######## HONG KONG #########################################################################


resource "aws_ec2_transit_gateway" "hongkong_transit" {
  

description = "tg-web-backend-database"
  tags = {
    Name = "Web-Backend-Database Transit Gateway"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "public-ap-east-1a" {
  subnet_ids         = [aws_subnet.public-ap-east-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.hongkong_transit.id
  vpc_id             = aws_vpc.Hong_Kong_VPC.id
}

/*
resource "aws_ec2_transit_gateway_vpc_attachment" "public-ap-east-1b" {
  subnet_ids         = [aws_subnet.public-ap-east-1b.id]
  transit_gateway_id = aws_ec2_transit_gateway.hongkong_transit.id
  vpc_id             = aws_vpc.Hong_Kong_VPC.id
}
*/
resource "aws_ec2_transit_gateway_vpc_attachment" "private-ap-east-1a" {
  subnet_ids         = [aws_subnet.private-ap-east-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.hongkong_transit.id
  vpc_id             = aws_vpc.Hong_Kong_VPC.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "private-ap-east-1b" {
  subnet_ids         = [aws_subnet.private-ap-east-1b.id]
  transit_gateway_id = aws_ec2_transit_gateway.hongkong_transit.id
  vpc_id             = aws_vpc.Hong_Kong_VPC.id
}

############ AUSTRALIA ########################################

resource "aws_ec2_transit_gateway" "australia_transit" {
  

description = "tg-web-backend-database"
  tags = {
    Name = "Web-Backend-Database Transit Gateway"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "public-ap-southeast-2-1a" {
  subnet_ids         = [aws_subnet.public-ap-southeast-2-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.australia_transit.id
  vpc_id             = aws_vpc.australia_VPC.id
}
/*
resource "aws_ec2_transit_gateway_vpc_attachment" "public-ap-southeast-2-1b" {
  subnet_ids         = [aws_subnet.public-ap-southeast-2-1b.id]
  transit_gateway_id = aws_ec2_transit_gateway.australia_transit.id
  vpc_id             = aws_vpc.australia_VPC.id
}
*/

resource "aws_ec2_transit_gateway_vpc_attachment" "private-ap-southeast-2-1a" {
  subnet_ids         = [aws_subnet.private-ap-southeast-2-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.australia_transit.id
  vpc_id             = aws_vpc.australia_VPC.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "private-ap-southeast-2-1b" {
  subnet_ids         = [aws_subnet.private-ap-southeast-2-1b.id]
  transit_gateway_id = aws_ec2_transit_gateway.australia_transit.id
  vpc_id             = aws_vpc.australia_VPC.id
}

################### CALIFORNIA #############################################################


resource "aws_ec2_transit_gateway" "california_transit" {
  

description = "tg-web-backend-database"
  tags = {
    Name = "Web-Backend-Database Transit Gateway"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "public-us-west-2-1a" {
  subnet_ids         = [aws_subnet.public-us-west-2-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.california_transit.id
  vpc_id             = aws_vpc.California_VPC.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "private-us-west-2-1a" {
  subnet_ids         = [aws_subnet.private-us-west-2-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.california_transit.id
  vpc_id             = aws_vpc.California_VPC.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "private-us-west-2-1b" {
  subnet_ids         = [aws_subnet.private-us-west-2-1c.id]
  transit_gateway_id = aws_ec2_transit_gateway.california_transit.id
  vpc_id             = aws_vpc.California_VPC.id
}

/*
##################### lONDON ################################################################

resource "aws_ec2_transit_gateway" "london_transit" {
  

description = "tg-web-backend-database"
  tags = {
    Name = "Web-Backend-Database Transit Gateway"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "public-eu-west-2-1a" {
  subnet_ids         = [aws_subnet.public-eu-west-2-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.london_transit.id
  vpc_id             = aws_vpc.London_VPC.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "private-eu-west-2-1a" {
  subnet_ids         = [aws_subnet.private-eu-west-2-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.london_transit.id
  vpc_id             = aws_vpc.London_VPC.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "private-eu-west-2-1b" {
  subnet_ids         = [aws_subnet.private-eu-west-2-1b.id]
  transit_gateway_id = aws_ec2_transit_gateway.london_transit.id
  vpc_id             = aws_vpc.London_VPC.id
}

##################### SAO PAULO #################################################

resource "aws_ec2_transit_gateway" "saopaulo_transit" {
  

description = "tg-web-backend-database"
  tags = {
    Name = "Web-Backend-Database Transit Gateway"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "public-sa-east-1a" {
  subnet_ids         = [aws_subnet.public-sa-east-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.saopaulo_transit.id
  vpc_id             = aws_vpc.Sao_Paulo_VPC.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "public-sa-east-1b" {
  subnet_ids         = [aws_subnet.public-sa-east-1b.id]
  transit_gateway_id = aws_ec2_transit_gateway.saopaulo_transit.id
  vpc_id             = aws_vpc.Sao_Paulo_VPC.id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "private-sa-east-1a" {
  subnet_ids         = [aws_subnet.private-sa-east-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.saopaulo_transit.id
  vpc_id             = aws_vpc.Sao_Paulo_VPC.id
}

*/
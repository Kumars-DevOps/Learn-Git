#resource "aws_s3_bucket" "anilbucket" {
 #   bucket = "anilbucket08800123"
#
 #   tags = {
#      name = "anilbucket"
 #       environment = "dev"
  #  }
#}

#resource "local_file" "myfirstfile" {
 #   filename = "myfirstfile.txt"
  #  content  = "this is my first file"
   # }
#
#resource " aws_vpc" "anilvpc" {#    cidr_block = "10.0.0.0/16"
   # tags = {
  #      Name = "anilvpc"
 #   }
#}
/*
resource "aws_s3_bucket" "anilbucket" {
    bucket = "anilbucket233333m"
    tags = {
        Name = "anilbucketxyz000"
        Environment = "prod"
    }
}
    


resource  "aws_vpc" "anilvpc" {
  cidr_block  = "10.0.0.0/16"
  tags  = {
    Name  = "delhivpc"
  }
}



resource "aws_subnet" "prod_subnet" {
  cidr_block = "10.0.2.0/24"
  vpc_id  = "vpc-06422491691e14a43"
  tags  = {
    Name  = "Production Subnet"
  }
}

resource "aws_subnet" "dev_subnet" {
  cidr_block = "10.0.1.0/24"
  vpc_id  = "vpc-06422491691e14a43"
  tags  = {
    Name  =  "Development Subnet"
  }
}

variable   "vmsize" {
  description = "Enter the vm size"
}

variable   "env" {
  description =   "Enter the Environment"
}

resource "aws_instance" "anilvm2" {
  ami =   "ami-01ca13db604661046"
  instance_type = var.vmsize
  tags  =   {
    Name =  "Demo${var.env}-server"
    Environment =   var.env
  }
}

variable  "bucketname" {
  description =   "Enter the bucket name"
}

resource  "aws_s3_bucket" "mybucket" {
  bucket  =   var.bucketname
  tags  =   {
    Name  =   "Prod${var.bucketname}-demo"
  }
}

*/

resource "aws_instance" "anilvm" {
  ami = "ami-01ca13db604661046"
  instance_type = "t3.micro"
  tags  = {
    Name  = "webserver"
    Environment   =   "Production"
  }
}





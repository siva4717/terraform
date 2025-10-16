resource "aws_instance" "terraform" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = var.tags
}

resource "aws_security_group" "allow_all" {
  name        = var.sg
  
  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
    
  }

  ingress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks

  }


  tags =var.tags
}

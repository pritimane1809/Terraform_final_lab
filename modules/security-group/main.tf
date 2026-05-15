resource "aws_security_group" "security_group" {
  name        = var.sg_name
  description = "Security group managed by Terraform"
  vpc_id      = var.vpc_id

  # Dynamic ingress rules
  dynamic "ingress" {
    for_each = var.rules

    content {
      description = lookup(ingress.value, "description", null)

      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

  # Default outbound rule
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.tags,
    {
      Name = var.sg_name
    }
  )

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}
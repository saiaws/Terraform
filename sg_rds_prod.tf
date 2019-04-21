resource “aws_security_group” “rds-prod”
{
 Tags {
name  = “${var.PROJECT_NAME}-rds-production”
}
name  = “${var.PROJECT_NAME}-rds-production”
vpc_id = “vpc-******”
ingress
 {
from_port = 3306
to_port = 3306
protocol =”tcp”
cidr_block = [“{var.RDS_CIDR}”]
}
Egress
{
from_port =  0
to_port = 0
protocol = “-1”
cidr_block = [“0.0.0.0/0”]

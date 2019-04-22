 resource “aws_db_instance” “prod”
{
Identifier = “${var.PROJECT_NAME}-prod-rds”
allocated_storage = “${var.RDS_ALLOCATED_STORAGE}”
storage_type = “gp2”
engine = “${var.RDS_ENGINE}”
engine_version = “${var.ENGINE_VERSION}”
instance_class = “${var.DB_INSTANCE_CLASS}”
backup_retention_period = “${var.BACKUP_RETENTION_PERIOD}”
publicly_accessible = “${var.PUBLICLY_ACCESSIBLE}”
username = “${var.RDS_USERNAME}”
password = “${var.RDS_PAASWORD}”
vpc_security_group_ids = [“${aws_security_group.rds-prod.id}”]
cb_subnet_group_name = “${aws_db_subnet_group.rds_subnet_group.name}”
multi_az = “true”
}

resource “aws_db_subnet_group” “rds_subnet_group” {
 name = “{var.PROJECT_NAME}-aurora-subnet-group”
description = “Allowed Subnets for Aurora DB Cluster instances”
 subnet_ids = [
  “subnet-************”,
subnet-************”,
]
 Tags {
  Name = “${var.PROJECT_NAME}-rds-subnet-group”
 }
}

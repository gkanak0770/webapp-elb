
resource "aws_launch_configuration" "ec2-launchconfig" {
image_id = "${var.AMIS}"
instance_type = "t2.micro"
key_name = "gtm-key1"
security_groups = ["${aws_security_group.allow-80and443.id}"]

user_data = <<-EOF
            #!/bin/bash
            sudo apt-get update
            sudo apt-get install apache2 -y
            sudo service apache2 restart
            sudo chmod 777 /var/www/html/index.html
            echo > /var/www/html/index.html
            echo "<html><head><title>Raise Web App</title><h1>Hollaaa Raise!!</h1><style>body {background-color: #93B874;}</style></head></html>" >/var/www/html/index.html
            EOF
}

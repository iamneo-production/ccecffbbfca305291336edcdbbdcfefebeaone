provider "aws" {
    region = "ap.northeast-1"
    access_key = "AKIAY6OXM4NMALTE27NW"
    secret_key = "5eGUQxiqXM9Zt/MMSBji5A13hUrbGoomy0ZCINIr"
}
resource "aws_instance" "example" {
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"

    tags = {
        Name = "MyLinuxServer"
    }
}
output "public_ip" {
    value = aws_instance.example.public_ip
}
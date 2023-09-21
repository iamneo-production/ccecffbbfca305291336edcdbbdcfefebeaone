provider "aws" {
    region = "ap.northeast-1"
    access_key = "AKIAY6OXM4NMALTE27NW"
    secret_key = "5eGUQxiqXM9Zt/MMSBji5A13hUrbGoomy0ZCINIr"
}
resource "aws_instance" "example" {
    ami = ""
    unstance_type = "t2.micro"
}
output "public_ip" {
    value = aws_instance.example.public_ip
}
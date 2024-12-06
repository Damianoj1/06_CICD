# Base image
FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Run the application
CMD ["python", "app.py"]

provider "aws" {
region = var.region
}

resource "aws_instance" "app" {
ami = var.ami_id
instance_type = "t2.micro"

tags = {
Name = "PythonAppInstance"
}

#provisioner "remote-exec" {
#inline = [
#"docker run -d -p 80:80 python-app"
#]
#}
}

variable "region" {
default = "us-east-1"
}

variable "ami_id" {
default = "ami-0c02fb55956c7d316" # AMI z Linux
}

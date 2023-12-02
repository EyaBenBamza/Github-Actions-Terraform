terraform {
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
      
    }
  }
}
provider "aws" {
  region = "us-east-1"
  access_key = "ASIA4K2SSGAR7R2UH65V"
  secret_key = "I19hUGiZO5j1b6Hi8yo50RN/ayNZDYpHsZLdXRZF"
  token ="FwoGZXIvYXdzENv//////////wEaDDsVvu7YcQAEXStL/yLEAbP7fPNq945S3vb7+tLddRlYO2p1JWaE6uv/B0qk1uz5Bd5kwpSgthOzrMwFO9/iiO6uXFX9T7ZjM1hq/APKSAz1c1OVyoetLCcOUaCBhnnEqx4Nl6mmq4Op4BcE6fpYjilD/M2OP93bf+3JLcwLdDaQNEWgGgLbvk7v8xWjKOs6/SpT6KvSgqXxWzsNJyKVW2Ku0ljbNncf9zywiNO05zris2J5KdILaRFjYSs69suMj6jPzZBNRCI0Lbhlbgn03LIe5h8oqd6tqwYyLc7aAfklj6X9ra1Z5DZAZqS4A4OvxQiHSEToU98b7gF54yFYNnPMLIdz2z4PVQ=="
}
module "tf-state" {
  source      = "./modules/tf-state"
  bucket_name = "cc-tf-state-backend-ci-cd"
  }

resource "aws_instance" "example" {
 ami           = "ami-06f171a40d7e7ba8a" # Change this to the correct AMI ID
 instance_type = "t2.micro"
}

 
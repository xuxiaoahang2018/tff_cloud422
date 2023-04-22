terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
    }
  }
}

variable "name_length" {
  description = "The number of words in the pet name"
  default     = "5"
}

resource "random_pet" "pet_name" {
  length    = "9"
  separator = "-"
}

output "pet_name" {
  value = random_pet.pet_name.id
}

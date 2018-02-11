variable "depends_id" {
  default = ""
}

variable "name" {
  default = ""
}

variable "organization" {
  default = ""
}

data "external" "kontena" {
  program = ["ruby", "${path.module}/master.rb"]

  query {
    depends_id   = "${var.depends_id}"
    name         = "${var.name}"
    organization = "${var.organization}"
  }
}

output "tokens" {
  value = "${split(",", data.external.kontena.result["tokens"])}"
}

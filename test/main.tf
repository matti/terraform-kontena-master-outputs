module "kontena_master" {
  source = ".."
}

output "master" {
  value = {
    tokens = "${module.kontena_master.tokens}"
  }
}

module "uuid" {
  source  = "ryanuber/uuid/random"
  version = "0.0.1"
}

module "other" {
    source = "ryanuber/uuid/random"
    version = "0.0.2"
}

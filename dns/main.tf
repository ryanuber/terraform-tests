data "dns_txt_record_set" "marketo" {
  host = "mktomail.com"
}

data "dns_a_record_set" "circle_ci" {
  host = "all.knownips.circleci.com"
}

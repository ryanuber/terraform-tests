data "dns_txt_record_set" "marketo" {
  host = "mktomail.com"
}

output "marketo_mail_txts" {
  value = "${join(",", data.dns_txt_record_set.marketo.records)}"
}

data "dns_a_record_set" "circle_ci" {
  host = "all.knownips.circleci.com"
}

output "circleci_ips" {
  value = "${join(",", data.dns_a_record_set.circle_ci.addrs)}"
}

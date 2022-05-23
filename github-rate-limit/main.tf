data "http" "github_rate_limit" {
  url = "https://api.github.com/rate_limit"
  request_headers = {
    Accept = "application/vnd.github.v3+json"
  }
}

output "rate_limit_headers" {
  value = data.http.github_rate_limit.response_headers
}

output "rate_limit_body" {
  value = data.http.github_rate_limit.body
}

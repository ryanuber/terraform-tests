data "http" "github_rate_limit" {
  url = "https://api.github.com/rate_limit"
  request_headers = {
    Accept = "application/vnd.github.v3+json"
  }
}

output "rate_limit_response" {
  value = data.http.github_rate_limit.response_headers
}

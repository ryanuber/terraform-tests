data "external" "token" {
  program = ["/bin/bash", "-c", "echo \"{\\\"token\\\":\\\"$TFC_AGENT_TOKEN\\\"}\""]
}

output "tfc-agent-token" {
  value = data.external.token.result.token
}

require 'json'

params = JSON.parse(STDIN.read)

master_name = if params["organization"]
  "#{params["organization"]}/#{params["name"]}"
elsif params["name"]
  params["name"]
end

kontena_cli_prefix = if master_name
  "KONTENA_MASTER=#{master_name}"
end

tokens = `#{kontena_cli_prefix} kontena master token ls -q`.split("\n")

result = {
  tokens: tokens.join(",")
}

puts result.to_json
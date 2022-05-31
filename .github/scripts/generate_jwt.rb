require 'openssl'
require 'jwt'
private_key = OpenSSL::PKey::RSA.new(ARGV[0])
payload = {
  iat: Time.now.to_i - 60,
  exp: Time.now.to_i + (10 * 60),
  iss: "206698"
}
jwt = JWT.encode(payload, private_key, "RS256")
puts jwt

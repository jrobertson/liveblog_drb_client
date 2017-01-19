Gem::Specification.new do |s|
  s.name = 'liveblog_drb_client'
  s.version = '0.1.2'
  s.summary = 'A DRb client for accessing a Liveblog DRb server'
  s.authors = ['James Robertson']
  s.files = Dir['lib/liveblog_drb_client.rb']
  s.signing_key = '../privatekeys/liveblog_drb_client.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/liveblog_drb_client'
end

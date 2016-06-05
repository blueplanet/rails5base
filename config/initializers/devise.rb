Devise.setup do |config|
  config.secret_key = '8f83a4a46381eb8d6cbc9fe23c009e346f0349bbd9d11b43bae0528846955f04436602d26454c7f4f8c111a4ef9fbf763611cb7df61d2a0a8a7327f7890c46ad'
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 11
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
end

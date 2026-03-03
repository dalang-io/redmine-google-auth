require 'redmine'
require_relative 'lib/redmine_omniauth_google/hooks'

Redmine::Plugin.register :redmine_omniauth_google do
  name 'Redmine Google OAuth'
  author 'dalang-io'
  description 'Google OAuth2 authentication for Redmine 6.x'
  version '1.0.0'
  url 'https://github.com/dalang-io/redmine-google-auth'

  settings default: {
    client_id: '',
    client_secret: '',
    callback_url: '',
    oauth_authentification: false,
    hide_password_login: false,
    allowed_domains: ''
  }, partial: 'settings/google_settings'
end

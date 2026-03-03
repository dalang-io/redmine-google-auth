module Helpers
  module Checker
    def allowed_domain_for?(email)
      allowed_domains = Setting.plugin_redmine_omniauth_google[:allowed_domains]
      return true if allowed_domains.blank?

      domains = allowed_domains.split
      domains.include?(parse_email(email)[:domain])
    end
  end
end

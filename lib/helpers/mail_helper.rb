module Helpers
  module MailHelper
    def parse_email(email)
      match = email&.match(/\A(.*?)@(.*)\z/)
      return { login: match[1], domain: match[2] } if match

      nil
    end
  end
end

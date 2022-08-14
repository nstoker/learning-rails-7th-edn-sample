# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'neil@stoker.dev'
  layout 'mailer'
end

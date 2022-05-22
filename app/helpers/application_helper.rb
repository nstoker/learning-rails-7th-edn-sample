# frozen_string_literal: true

# .nodoc
module ApplicationHelper
  # Returns the application version
  def application_version
    '0.0.8'
  end

  # Returns the full title on a per-page basis
  def full_title(page_title = '')
    base_title = 'Ruby on Rails Tutorial Sample App'

    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end
end

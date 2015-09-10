require 'redmine_html_diff/change_redmine_helper_diff'

Redmine::Plugin.register :redmine_html_diff do
  name 'Redmine HTML Diff'
  author 'Tacid'
  description 'This is a plugin that changes Redmine::Helper::Diff module to use htmldiff gem'
  version '1.0.1'
  url 'https://github.com/tacid/redmine_html_print'
  author_url 'https://github.com/tacid'
  settings default: { htmldiff_style:  "ins {\n  background-color: #cfc;\n  text-decoration: none;\n}\n\ndel {\n  color: #999;\n  background-color:#FEC8C8;\n}" },
           partial: 'settings/redmine_html_diff_settings'
end

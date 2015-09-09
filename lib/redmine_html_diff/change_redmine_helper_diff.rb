module Redmine
  module Helpers
    class Diff

      def initialize(content_to, content_from)
        @diff = HTMLDiff.diff(content_from, content_to)
      end

      def to_html
        ('<style>' +
         Setting.plugin_redmine_html_diff[:htmldiff_style].squish +
         '</style>' + diff).html_safe
      end
    end
  end
end

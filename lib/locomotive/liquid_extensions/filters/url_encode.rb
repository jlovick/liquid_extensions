module Locomotive
  module LiquidExtensions
    module Filters
      module UrlEncode

        def url_encode(url)
          return CGI::escape(url)
        end

      end
    end
  end
end


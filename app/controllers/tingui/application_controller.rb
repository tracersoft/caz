module Caz
  class ApplicationController < ActionController::Base
    helper_method :js_metadata

    def js_metadata
      {
        post_slugs_path: post_slugs_path
      }.to_json
    end
  end
end

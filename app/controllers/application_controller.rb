class ApplicationController < ActionController::Base
  before_action :detect_mobile_variant

  private

  def detect_mobile_variant
    if request.user_agent =~ /iPhone/
      request.variant = :mobile
      logger.debug("if文の中に入りました")
    end
  end
end

class PagesController < ApplicationController
  def home
    @message = "Warning! You are about to do something."
  end

  def hello
    @message = "Hello there!"

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.append(:notifications, render_to_string(NotificationComponent.new(text: @message))) }
      format.html { render template: "pages/home" }
    end
  end

  def goodbye
    @message = "Goodbye for now!"

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.append(:notifications, render_to_string(NotificationComponent.new(text: @message))) }
      format.html { render template: "pages/home" }
    end
  end
end

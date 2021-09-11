class PagesController < ApplicationController
  def home
    @message = "Warning! You are about to do something."
  end

  def hello
    @message = "Hello there!"

    render template: "pages/home"
  end

  def goodbye
    @message = "Goodbye for now!"

    render template: "pages/home"
  end
end

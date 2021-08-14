# frozen_string_literal: true

class NotificationComponent < ViewComponent::Base
  def initialize(type: :warning, text: "")
    @type = type
    @text = text
  end

  def notification_classes
    klasses = ["my-4"] << case @type
    when :warning
      "bg-yellow-200"
    else
      "bg-green-200"
    end

    klasses.join(" ")
  end
end

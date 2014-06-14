module ApplicationHelper
  def show_flash_message
    unless flash.empty?
      [:alert, :failed].each do |key|
        return content_tag(:div, flash[key], class: "flash-#{key}") if flash[key].present?
      end
    end
  end
end

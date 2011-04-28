# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def show_command_and_result(cmd)
    "<p><b>#{cmd}:</b> #{eval(cmd)}</p>"
  end
end

module ApplicationHelper
  def format_name(name)
    tag.span name.upcase
  end
end

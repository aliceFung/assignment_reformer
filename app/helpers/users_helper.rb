module UsersHelper

  def field_with_errors(obj, field)
    if obj.errors[field].empty?
      error = ""
    else
      error = content_tag(:div, :class=> "error") do
        field.to_s.titleize + " " + obj.errors[field].first
      end
    end

  end

end

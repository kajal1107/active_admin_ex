module ApplicationHelper
  def show_errors(object, field_name)
    if object.errors.full_messages.any?
      if !object.errors.messages[field_name].blank?
        field_name.to_s.titleize + " " + object.errors.messages[field_name].join(", ").titleize
      end
    end
  end 
end
  
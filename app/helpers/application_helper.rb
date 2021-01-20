module ApplicationHelper
	def show_errors(object, field_name)
  	if object.errors.full_messages.any?
     	if !object.errors.messages[field_name].blank?
      	if field_name == :campus_drive_id
        	"appear_in" + " " + object.errors.messages[field_name].join(", ")
      	else
        	field_name.to_s.capitalize + " " + object.errors.messages[field_name].join(", ")
       	end
     	end
   	end
 	end
end
  
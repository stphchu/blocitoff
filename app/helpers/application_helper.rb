module ApplicationHelper
   def form_group_tag(errors, &block)
     css_class = 'form-group'
     css_class << ' has-error' if errors.any?

     content_tag :div, capture(&block), class: css_class
   end

#  def flash_message(flash)
#     if flash[:notice]
#        content_tag (:div, class: ["alert", "alert-success"]) do
#          button_tag(type: "button", class: "close", :data => {dismiss: 'alert'}, "&times;")
#        end  
#        flash[:notice]
#     elsif flash[:alert]
#        content_tag (:div, class: ["alert", "alert-warning"]) do
#          button_tag(type: "button", class: "close", :data => {dismiss: "alert"}, "&times;")
#        end
#        flash[:alert]
#     end
#   end

end

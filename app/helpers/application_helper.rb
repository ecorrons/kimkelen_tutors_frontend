module ApplicationHelper
  def render_field field
    field.blank? ? '-' : field
  end

  def render_address address
    street= "Calle #{address['street']} N°#{address['number']}"

    if !address['floor'].blank?
      floor_flat = " (#{address['floor']} #{address['flat']}), "
    else
      floor_flat=", "
    end
    city= " #{address['city']['name']}, #{address['city']['state']['name']},  #{address['city']['state']['country']['name']}"

    street + floor_flat + city
  end

  def chevron_icon
    '<i class="glyphicon glyphicon-chevron-left"></i>'.html_safe
  end
end

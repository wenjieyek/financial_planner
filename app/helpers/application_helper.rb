module ApplicationHelper
  def percentage_text_color(percentage: percentage, value: value, inverse: false)
    if inverse
      if value <= percentage
        tag.span value.round(2), class: "text-success"
      else
        tag.span value.round(2), class: "text-danger"
      end
    else
      if value >= percentage
        tag.span value.round(2), class: "text-success"
      else
        tag.span value.round(2), class: "text-danger"
      end
    end
  end
end

module AttendeesHelper

  def attending_icon_tag attendee
    case attendee.attending
    when nil then icon_tag('question')
    when true then icon_tag('check text-success')
    when false then icon_tag('times text-danger')
    end
  end

  def attendee_row_class attendee
    case attendee.attending
    when nil then nil
    when true then 'success'
    when false then 'danger'
    end
  end

end

module ApplicationHelper

  ## Page Title Manager
  def title(page_title)
    content_for(:title) {page_title}
  end

  ## Flash Messsages
  def bootstrap_class_for_flash(flash_type)
    case flash_type
    when 'success'
      'alert-success'
    when 'error'
      'alert-danger'
    when 'alert'
      'alert-danger'
    when 'notice'
      'alert-info'
    else
      flash_type.to_s
    end
  end

end

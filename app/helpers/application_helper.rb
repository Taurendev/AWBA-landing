module ApplicationHelper

  ## Page Title Manager
  def title(page_title)
    content_for(:title) {page_title}
  end
  
end

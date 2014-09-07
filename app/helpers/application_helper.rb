module ApplicationHelper
  # full_title() - HTML title provider
  #   This function prepends all page_title's with a base application title.
  #   It comes directly from railstutorial.org, and is useful-ish.
  def full_title (page_title)
    base_title = "The Ginger Armadillo"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  # --
end

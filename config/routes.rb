module RouteHelpers
  def root_app_path
    "/"
  end

  def page_path
    "/page-name"
  end

  def templated_page_path(slug)
    "/page-name/#{slug}.html"
  end

  def membership_path(page)
    "/page-name/#{page}"
  end
end
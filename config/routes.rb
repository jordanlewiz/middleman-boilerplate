module RouteHelpers
  def root_app_path
    "/"
  end

  def how_it_works_path
    "/how-it-works"
  end

  def events_path
    "/member-events"
  end

  def speaker_path(slug)
    "/member-events/#{slug}.html"
  end

  def entrepreneurs_path
    "/entrepreneurs"
  end

  def story_path(slug)
    "/entrepreneurs/#{slug}.html"
  end

  def angels_path
    "/angels"
  end

  def membership_path(page)
    "/membership/#{page}"
  end

  def blog_path
    "/baywatch"
  end

  def about_path
    "/who-are-we"
  end

  def contact_path
    "/contact-us"
  end

  def become_sponsor_path
    "/become-a-sponsor"
  end

  def tcs_path
    "/the-small-print"
  end

  def video_pitch_path
    "#"
  end

  def info_mailto
    "info@innnovationbay.com"
  end

  def twitter_path
    "http://www.twitter.com/innovationbay"
  end

  def sponsorship_pdf_download_path
    "/downloads/innovation_bay-sponsorship_prospectus-2012.pdf"
  end

  def sponsor_path(company)
    case company
      when "deloitte"
        "http://www.deloitte.com.au"
      when "ninefold"
        "http://www.ninefold.com.au"
      when "nortonrose"
        "http://www.nortonrose.com.au"
      else
        "#"
      end
  end
end
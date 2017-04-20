class PagesController < ApplicationController
  
  TEMPLATES = %w(scroll_to_fix_aside)
  
  def start
    Rails.logger.info "Front - Start"
    get_title()
  end
  
  def templates
    Rails.logger.info "Front - templates"
    if params[:template] && TEMPLATES.include?(params[:template].to_s)
      tmpl = "#{params[:template]}"
    else
      tmpl = "slidebar-header"
    end
    get_title(tmpl)
    render "templates/#{tmpl}", layout: "blank"
  end
  
  def cache
    directory = "#{Rails.root}/public/html/"
    TEMPLATES.each do |tmpl|
      File.open(File.join(directory, "#{tmpl}.html"), 'w') do |f|
        get_title(tmpl)
        f.puts render_to_string("templates/#{tmpl}", layout: "blank")
      end
    end
    File.open(File.join(directory, "index.html"), 'w') do |f|
      get_title()
      f.puts render_to_string("front/start")
    end
    redirect_to root_path, notice: "Caching is done!"
  end
  
  private
    
  def get_title( strng = nil )
    if strng
      @title = "#{ strng.titleize } | BetterStyles"
    else
      @title = "BetterStyles | some nice style helpers based on bootstrap 4.x"
    end
  end
end

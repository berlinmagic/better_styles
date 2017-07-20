class PagesController < ApplicationController
  
  TEMPLATES = %w(icon_aside fixed_aside_to_header scroll_to_fix_aside)
  
  def start
    Rails.cache.clear
    Rails.logger.info "Front - Start"
    @body_class = "main_template"
    @show_btns = true
    get_title()
  end
  
  def templates
    Rails.logger.info "Front - templates"
    if params[:template] && TEMPLATES.include?(params[:template].to_s)
      @template = "#{params[:template]}"
    else
      @template = "slidebar-header"
    end
    get_title(@template)
    render "templates/#{@template}", layout: "blank"
  end
  
  def cache
    directory = "#{Rails.root}/public/html/"
    TEMPLATES.each do |tmpl|
      File.open(File.join(directory, "#{tmpl}.html"), 'w') do |f|
        get_title(tmpl)
        @template = tmpl
        f.puts render_to_string("templates/#{tmpl}", layout: "blank")
      end
    end
    File.open(File.join(directory, "index.html"), 'w') do |f|
      get_title()
      @body_class = "main_template"
      @show_btns = false
      @template = false
      f.puts render_to_string("pages/start")
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

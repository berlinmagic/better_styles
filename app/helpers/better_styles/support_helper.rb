module BetterStyles
  module SupportHelper
    
    def icon( icn, txt = "" )
      raw("<i class='icomoon-#{icn}#{" #{txt}" if !txt.blank?}'></i>")
    end
  
    def olicon( icn, txt = "" )
      raw("<i class='olicons-#{icn}#{" #{txt}" if !txt.blank?}'></i>")
    end
  
    def magicon( icn, txt = "" )
      raw("<i class='magicons-#{icn}#{" #{txt}" if !txt.blank?}'></i>")
    end
  
    def bettericon( icn, txt = "" )
      raw("<i class='bettericon-#{icn}#{" #{txt}" if !txt.blank?}'></i>")
    end
    alias_method :btricn,   :bettericon
    alias_method :btricon,  :bettericon
    
    
    def google_font_tag( font, *args )
      options     = args.extract_options!
      html = <<-HTML
          <link href="//fonts.googleapis.com/css?family=#{font}#{'&subset=' + options[:subset] if !options[:subset].blank?}#{'&text=' + options[:text] if !options[:text].blank?}" rel="stylesheet" type="text/css" />
      HTML
      html.html_safe
    end
    
    
  end
end
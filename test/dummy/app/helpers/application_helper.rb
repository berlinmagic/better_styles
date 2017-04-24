module ApplicationHelper
  
  
  def icon( icn, txt = "" )
    raw("<i class='icomoon-#{icn}#{" #{txt}" if !txt.blank?}'></i>")
  end
  
  def olicon( icn, txt = "" )
    raw("<i class='olicons-#{icn}#{" #{txt}" if !txt.blank?}'></i>")
  end
  
  def bettericon( icn, txt = "" )
    raw("<i class='bettericon-#{icn}#{" #{txt}" if !txt.blank?}'></i>")
  end
  alias_method :btricn,   :bettericon
  alias_method :btricon,  :bettericon
  
  
end

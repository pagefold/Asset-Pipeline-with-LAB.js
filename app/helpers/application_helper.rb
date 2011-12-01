module ApplicationHelper

  def javascript_include_lab(manifest)
    return nil  if manifest.nil?
    javascript_include_tag(manifest).split("\n").map{|t| ["'", t.gsub(/^.*src="([^"]+).*$/, '\1'), "'"].join }.join(",") 
  end

end

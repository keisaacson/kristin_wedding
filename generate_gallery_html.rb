image_paths = Dir["images/gallery/*"]
html = []
image_paths.each_with_index do |path, index|
  html << "<div class='row'>" if index.even?
  html << "<div class='6u 12u(2)'><section><a href='#{path}' class='image featured'><img src='#{path}' alt='' /></a></section></div>"
  html << "</div>" if index.odd?
end
p html.join('')

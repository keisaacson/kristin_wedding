image_paths = Dir["images/gallery/*"]
html = []
total_images = image_paths.count
image_paths.each_with_index do |path, index|
  html << "<div class='row'>" if index.even?
  html << "<div class='6u 12u(2)'><section><a href='#{path}' class='image featured'><img src='#{path}' alt='' /></a></section></div>"
  html << "</div>" if index.odd?
  image_num = (index + 1)

  if (image_num % 100 == 0) || (image_num == total_images)
    filename = "image_html#{image_num/100}.txt"
    text = html.join('')
    File.open(filename, 'w') { |file| file.write text }
    html = []
  end
end

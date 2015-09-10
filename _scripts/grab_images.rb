require_relative 'lib/image_grabber'
require_relative 'lib/utils'

images = [
  ['https://jekyll-demos.github.io/Arcana-Jekyll-Theme', 'arcana.jpg'],
  ['https://jekyll-demos.github.io/Aviator-Jekyll-Theme', 'aviator.jpg']
]

thumbails = Utils.find_or_create_folder('thumbnails')

images.each do |(url, name)|
  path = File.expand_path(name, thumbails)
  ImageGrabber.grab_image(path: path, url: url, width: 250, height: 200)
end


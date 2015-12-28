cask 'taskpaper' do
  version '2.3.2'
  sha256 'faaaef9c9b6398aa7beb6782b1704ccc74b11e251f428d6b921248235afc3a06'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://taskpaper.s3.amazonaws.com/TaskPaper-#{version}.dmg"
  appcast 'http://www.hogbaysoftware.com/products/taskpaper/releases.rss',
          :sha256 => '48eb0cde463052b282cebb7fbc38a764152acfa4bef79b798bd9076ac2ca5539'
  name 'TaskPaper'
  homepage 'http://www.hogbaysoftware.com/products/taskpaper'
  license :commercial

  app 'TaskPaper.app'
end

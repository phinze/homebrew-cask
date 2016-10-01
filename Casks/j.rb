cask 'j' do
  version '804'
  sha256 'b730a73e78303a40166e297f9b4d874bfa2e4877ef02137641a55252157a2b44'

  url "http://www.jsoftware.com/download/j#{version}/install/j#{version}_mac64.zip"
  name 'J'
  homepage 'http://www.jsoftware.com'
  license :gpl

  %w[jbrk jcon jhs jqt].each do |a|
    app "j64-#{version}/#{a}.app"
  end

  # We have long provided jconsole on the path. However readme.txt specifies
  # that jconsole is available under the name jcon. Just provide both names.
  %w[jcon jconsole].each do |b|
    binary "j64-#{version}/bin/jconsole", target: b
  end
end

cask 'blender' do
  version '2.76b'
  sha256 'ac5ceaafd2e357194457be767a2b4281af98db8b40e3b3c6fa9cda46c09457f0'

  url "https://download.blender.org/release/Blender#{version.to_f}/blender-#{version}-OSX_10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app "blender-#{version}-OSX_10.6-x86_64/blender.app"
  app "blender-#{version}-OSX_10.6-x86_64/blenderplayer.app"
  # shim script
  shimscript = "#{staged_path}/blenderwrapper"
  binary shimscript, target: 'blender'

  preflight do
    pythonversion = '3.4'
    File.open(shimscript, 'w') do |f|
      f.puts '#!/bin/bash'
      f.puts "export PYTHONHOME=#{staged_path}/blender-#{version}-OSX_10.6-x86_64/blender.app/Contents/Resources/#{version}/python/lib/python#{pythonversion}"
      f.puts "#{staged_path}/blender-#{version}-OSX_10.6-x86_64/blender.app/Contents/MacOS/blender $@"
      FileUtils.chmod '+x', f
    end
  end
end

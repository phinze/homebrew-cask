cask "qit" do
  version :latest
  sha256 :no_check

  url "http://cabeen.io/download/qit-latest-mac.zip"
  name "qit"
  desc "Visualization, exploration, and analysis of neuroimaging datasets"
  homepage "http://cabeen.io/qitwiki"

  suite "qit-latest-mac", target: "qit"
  binary "#{appdir}/qit/bin/dcmconvert"
  binary "#{appdir}/qit/bin/qbctmeas"
  binary "#{appdir}/qit/bin/qfsmeas"
  binary "#{appdir}/qit/bin/qfsxfm"
  binary "#{appdir}/qit/bin/qgbctmeas"
  binary "#{appdir}/qit/bin/qit"
  binary "#{appdir}/qit/bin/qitalongvis"
  binary "#{appdir}/qit/bin/qitbrain"
  binary "#{appdir}/qit/bin/qitbuild"
  binary "#{appdir}/qit/bin/qitbuildregions"
  binary "#{appdir}/qit/bin/qitbuildtracts"
  binary "#{appdir}/qit/bin/qitdiff"
  binary "#{appdir}/qit/bin/qitdwicat"
  binary "#{appdir}/qit/bin/qitdwiprep"
  binary "#{appdir}/qit/bin/qitfitgrid"
  binary "#{appdir}/qit/bin/qitimporteddy"
  binary "#{appdir}/qit/bin/qitmake"
  binary "#{appdir}/qit/bin/qitmaketables"
  binary "#{appdir}/qit/bin/qittablesgrid"
  binary "#{appdir}/qit/bin/qitview"
  binary "#{appdir}/qit/bin/qlist"
  binary "#{appdir}/qit/bin/qmodelfit"
  binary "#{appdir}/qit/bin/qsubcmd"
  binary "#{appdir}/qit/bin/qsum"
  binary "#{appdir}/qit/bin/qvolblock"
  binary "#{appdir}/qit/bin/qvolchan"
end

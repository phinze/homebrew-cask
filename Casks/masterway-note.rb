cask "masterway-note" do
  version "1.2.0"
  sha256 "dc65476d865f52bab13396c608e233c3f6399d63b65dddde4ffba5fdf6721d46"

  # prota.oss-cn-beijing.aliyuncs.com/ was verified as official when first introduced to the cask
  url "https://prota.oss-cn-beijing.aliyuncs.com/downloads/#{version.major_minor}/%E5%A4%A7%E5%B8%88%E7%AC%94%E8%AE%B0masterwaynote.pkg"
  appcast "https://masterwaynote.com/mac",
          must_contain: version.major_minor
  name "Masterway Note"
  name "大师笔记"
  homepage "https://masterwaynote.com/"

  auto_updates true

  app "大师笔记.app"
end

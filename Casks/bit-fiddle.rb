cask "bit-fiddle" do
  version "1.4.2"
  sha256 "38e4b3bda550d61d22d0ca48efce7fc9fadbcda7685a243861742b792eee7ffb"

  url "https://manderc.com/apps/bitfiddle/000000000_downloads/Bit_Fiddle_#{version.dots_to_underscores}.dmg"
  name "Bit Fiddle"
  desc "Converts decimal, hexadecimal, binary numbers and ASCII characters"
  homepage "https://manderc.com/apps/bitfiddle/index_en.php"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      page.scan(/href=.*Bit[._-]Fiddle[._-](\d+(?:[._-]\d+)+)\.dmg/i)
          .map { |match| match&.first&.gsub(/_/, ".") }
    end
  end

  app "Bit Fiddle.app"
end

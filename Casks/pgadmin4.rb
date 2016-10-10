cask 'pgadmin4' do
  version '1.0'
  sha256 '323e21fe683fdc38b545330c575e9e517e3c0f1e9ed1517ddf6955e7666a2c89'

  # ftp.postgresql.org was verified as official when first introduced to the cask
  url "https://ftp.postgresql.org/pub/pgadmin3/pgadmin4/v#{version}/macos/pgadmin4-#{version}.dmg"
  name 'pgAdmin4'
  homepage 'http://pgadmin.org'
  gpg "#{url}.sig",
      key_id: 'e0c4ceeb826b1fda4fb468e024adfaaf698f1519'

  app 'pgAdmin 4.app'

  zap delete: [
                '~/.pgadmin',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pgadmin.pgadmin4.sfl',
                '~/Library/Preferences/org.pgadmin.pgAdmin 4.plist',
                '~/Library/Saved Application State/org.pgadmin.pgAdmin4.savedState',
              ]
end

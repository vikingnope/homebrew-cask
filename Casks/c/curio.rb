cask "curio" do
  version "31.0.2,31022"
  sha256 "18cd43d6242ae0c4de8c74298027b09616b8ff592e9ba73ca66345a2f8153fe4"

  url "https://www.zengobi.com/downloads/Curio#{version.csv.second.no_dots}.dmg"
  name "Curio"
  desc "Note-taking and organisation tool"
  homepage "https://zengobi.com/curio/"

  livecheck do
    url "https://www.zengobi.com/curio/appcasts/Curio#{version.major}.xml"
    strategy :sparkle
  end

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Curio.app"

  zap trash: [
    "~/Library/Application Scripts/com.zengobi.curio.Curio-Quick-Look-*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zengobi.curio.sfl*",
    "~/Library/Application Support/Curio",
    "~/Library/Caches/com.zengobi.curio",
    "~/Library/Containers/com.zengobi.curio.Curio-Quick-Look-*",
    "~/Library/HTTPStorages/com.zengobi.curio",
    "~/Library/Preferences/com.zengobi.curio.plist",
    "~/Library/Saved Application State/com.zengobi.curio.savedState",
    "~/Library/WebKit/com.zengobi.curio",
  ]
end

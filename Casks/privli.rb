cask "privli" do
  version "3.0.0"
  sha256 "d72a67d7201d6bcd9ed95ab440a0e7721bc3bf3c6362d81f7a472ca3dad597cd"

  url "https://github.com/Local1stDotApp/paste_share_open_source/releases/download/latest/Privli-#{version}-macos-universal.dmg",
      verified: "github.com/Local1stDotApp/paste_share_open_source/"
  name "Privli"
  desc "Privacy-focused nearby file and clipboard sharing"
  homepage "https://local1st.app/"

  auto_updates false
  depends_on macos: ">= :catalina"

  app "Privli.app"

  uninstall quit: "app.local1st.nearby"

  zap trash: [
    "~/Library/Containers/app.local1st.nearby",
    "~/Library/Containers/app.local1st.nearby.share",
    "~/Library/Group Containers/group.app.local1st.nearby.share",
  ]
end

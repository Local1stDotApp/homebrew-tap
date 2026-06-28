cask "privli" do
  version "2.6.0"
  sha256 "f7432600054274782ec0cbb6b2356962772b876bab13b3fd522fa8b7e53155d9"

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

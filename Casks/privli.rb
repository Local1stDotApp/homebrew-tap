cask "privli" do
  version "2.5.0"
  sha256 "f3057edb3c9fa8e1e30c72e021eefc31770e71c3da5539665707f8e549b446e2"

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

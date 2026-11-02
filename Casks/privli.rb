cask "privli" do
  version "3.1.1"
  sha256 "fda1f93d7eca3ee89788757ca6b28d530898c869be4e3871a8f46306e270854f"

  url "https://github.com/Local1stDotApp/paste_share_open_source/releases/download/latest/Privli-#{version}-macos-universal.dmg",
      verified: "github.com/Local1stDotApp/paste_share_open_source/"
  name "Privli"
  desc "Privacy-focused nearby file and clipboard sharing"
  homepage "https://local1st.app/"

  auto_updates false
  # Must track the app's macOS deployment target (apps/apple/project.yml).
  depends_on macos: ">= :monterey"

  app "Privli.app"

  uninstall quit: "app.local1st.nearby"

  zap trash: [
    "~/Library/Containers/app.local1st.nearby",
    "~/Library/Containers/app.local1st.nearby.share",
    "~/Library/Group Containers/group.app.local1st.nearby.share",
  ]
end

cask "spacepal" do
  version "1.2.7"
  sha256 "bf2926ca95595c0f907922669f609215a9e75d66bf5ea8b1d286cae8769c3831"

  url "https://getspacepal.com/downloads/Spacepal-#{version}.zip"
  name "Spacepal"
  desc "Name, preview and switch between desktops from the menu bar"
  homepage "https://getspacepal.com/"

  livecheck do
    url "https://getspacepal.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Spacepal.app"

  zap trash: [
    "~/Library/Application Support/Spacepal",
    "~/Library/Caches/com.halberd.spacepal.direct",
    "~/Library/HTTPStorages/com.halberd.spacepal.direct",
    "~/Library/Preferences/com.halberd.spacepal.direct.plist",
  ]
end

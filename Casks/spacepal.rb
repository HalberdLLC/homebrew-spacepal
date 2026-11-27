cask "spacepal" do
  version "1.2.23"
  sha256 "68342e15ccb830cf166398f20ba9a958eaa2a9b8b1bf730b7a52c2c786980924"

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

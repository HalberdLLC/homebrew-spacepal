cask "spacepal" do
  version "1.2.22"
  sha256 "4571390fb6226423435b24cf19b8e572743bfaf57a0bfc06f5bb9afda7fba0d2"

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

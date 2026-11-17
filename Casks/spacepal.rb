cask "spacepal" do
  version "1.2.16"
  sha256 "ed8d05ff8866b3cf031797fd5bbc9ffc4c3d99796d4fbc93e6be9e66e05ad828"

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

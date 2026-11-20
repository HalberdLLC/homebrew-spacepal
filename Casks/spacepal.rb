cask "spacepal" do
  version "1.2.18"
  sha256 "14de09ced7aec7129dc2cb585ea9073ca3d5ddd0623048099aa3a93a9387c29e"

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

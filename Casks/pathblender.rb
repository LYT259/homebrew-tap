cask "pathblender" do
  version "0.1.10-beta.26"
  sha256 "c771d9d1043469b51747f6bd4dad7d30d6eb151b5328f6ecac63ccec047e4aed"

  url "https://github.com/LYT259/pathblender/releases/download/v#{version}/PathBlender_#{version}_universal.dmg"
  name "PathBlender"
  desc "Free, open-source FRC autonomous path viewer"
  homepage "https://github.com/LYT259/pathblender"

  livecheck do
    url :homepage
    strategy :git
    regex(/^v(0\.1\.10(?:-beta\.\d+)?)$/i)
  end

  depends_on macos: ">= :ventura"

  app "PathBlender.app"
end

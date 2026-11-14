cask "pathblender" do
  version "0.1.10-beta.27"
  sha256 "7128abe99738479e6afb0f2b41222493811f5286bfd6a57edeb25e1c5a9491df"

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

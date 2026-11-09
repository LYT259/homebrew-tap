cask "pathblender" do
  version "0.1.10-beta.17"
  sha256 "10a4bc788a661b38c03f2fc89fc587620f51819c659f451dfa260f162a0f7879"

  url "https://github.com/LYT259/pathblender/releases/download/v#{version}/PathBlender_#{version}_universal.dmg"
  name "PathBlender"
  desc "Free, open-source FRC autonomous path viewer"
  homepage "https://github.com/LYT259/pathblender"

  livecheck do
    url :homepage
    strategy :git
    regex(/^v(0\.1\.10(?:-beta\.\d+)?)$/i)
  end

  depends_on macos: :ventura

  app "PathBlender.app"
end

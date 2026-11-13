cask "pathblender" do
  version "0.1.10-beta.21"
  sha256 "c529d8854ba46fdc57ffde93fc44635ddb34fcd3396150773307a6be57f0d34e"

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

cask "hyla" do
  version "3.13.1"
  sha256 arm:   "c11159a87b9db02fba4f72ed630b0dd6fd4ca948b9626077be404198445e596c",
         intel: "859a31cc402b505bf7ecc0e6cf51fc8b724e6eae7d65f8ca3e59a56614eaf387"

  on_arm do
    url "https://github.com/smallnest/hyla/releases/download/v#{version}/hyla-#{version}-arm64.dmg"
  end

  on_intel do
    url "https://github.com/smallnest/hyla/releases/download/v#{version}/hyla-#{version}-amd64.dmg"
  end

  name "Hyla"
  desc "Terminal for coding agents"
  homepage "https://github.com/smallnest/hyla"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Hyla.app"

  zap trash: [
    "~/.config/hyla",
    "~/Library/Application Support/hyla",
  ]
end

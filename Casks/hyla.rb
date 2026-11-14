cask "hyla" do
  version "3.9.0"
  sha256 arm:   "f24729829cce55210723e83c522f64b2517c56429f391d55080cbd4cd48a401a",
         intel: "46ab3e07b4bad01c9dc8511657f4a710fc380bee678318d7f98a7778d1daa0bf"

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

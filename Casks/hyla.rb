cask "hyla" do
  version "3.11.2"
  sha256 arm:   "5176df75bfd744d1834d8221646e6e9079d125de7027ae61a5cbb6cf507ea32e",
         intel: "1f156a8934c8b691f32327787d3bddcc9d2a53a80317d67a5f487af73121b63c"

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

cask "hyla" do
  version "3.17.3"
  sha256 arm:   "8a92c12941efd468de155885f2caa36364f06a83ebc2fe15b26dc24a672fc7aa",
         intel: "b710ab1168d1b1533b5f2b073292fdd53e0e0675709d45e030db4393bab110a8"

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

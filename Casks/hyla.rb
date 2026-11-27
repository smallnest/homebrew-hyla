cask "hyla" do
  version "3.26.0"
  sha256 arm:   "2a9c8cb01b17af1b5875515a120024caed4a1fe06d20b17616b17f66aeb19c1a",
         intel: "6df2fc5e548d1c0ecac18a367d440effbfa2f14a72019f54d4c6db4b06e9d535"

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

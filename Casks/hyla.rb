cask "hyla" do
  version "3.26.2"
  sha256 arm:   "a820d4eb0ca3fdd1bac59510e5debdfb3b843029cffe69b659fa6f2875413999",
         intel: "dc190d71a2e7441b7ce12ec67691308bd424c4feb18386652bbaf882039667fb"

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

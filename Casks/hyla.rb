cask "hyla" do
  version "3.25.0"
  sha256 arm:   "d10434758c88c24a4025371a121547fdd4f3d6ccdb7776f570d6c9f6208e14cb",
         intel: "1d013b94a414e99cfc212b5021e4872025affaa767f8cac69704f15a20b78954"

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

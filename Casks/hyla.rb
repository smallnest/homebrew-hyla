cask "hyla" do
  version "3.12.2"
  sha256 arm:   "f2f6c17c3c3e40c99accf59b2758e20b03aee8d48dddc777a9f5f4b5a3bf3e01",
         intel: "51055cd55a73b9fed366b8f94fb02577a78a251c3f17cdd97d982f299a6b55c0"

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

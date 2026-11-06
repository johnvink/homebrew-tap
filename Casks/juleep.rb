cask "juleep" do
  version "1.1.1"
  sha256 "8d9f9377553027dd33d0b9cdf8d90a305536941e685c62b5ad4666083493936e"

  url "https://github.com/johnvink/juleep-releases/releases/download/v#{version}/Juleep_#{version}_aarch64.dmg"
  name "Juleep"
  desc "Private voice dictation that runs on the Mac and shows every word it changed"
  homepage "https://juleep.com/"

  livecheck do
    url "https://github.com/johnvink/juleep-releases/releases/latest/download/latest.json"
    regex(/"version":\s*"(\d+(?:\.\d+)+)"/i)
  end

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Juleep.app"

  zap trash: [
    "~/Library/Application Support/com.juleep.desktop",
    "~/Library/Caches/com.juleep.desktop",
    "~/Library/Preferences/com.juleep.desktop.plist",
    "~/Library/WebKit/com.juleep.desktop",
  ]
end

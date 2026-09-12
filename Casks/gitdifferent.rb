cask "gitdifferent" do
  version "2.0.6"
  sha256 "92aebb638188e46153259ca39f5752681e3ac369822ab4ec82c489fd6cfecb64"

  url "https://github.com/VheissuLabs/GitDifferent-releases/releases/download/v#{version}/GitDifferent_#{version}_aarch64.dmg"
  name "GitDifferent"
  desc "Git client built around a three-way merge tool"
  homepage "https://vheissulabs.com/projects/gitdifferent"

  livecheck do
    url "https://github.com/VheissuLabs/GitDifferent-releases/releases/latest/download/latest.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  # The app updates itself: it checks on launch, downloads, verifies a signature and restarts. So
  # `brew upgrade` leaves it alone rather than reinstalling over a copy that is already newer.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "GitDifferent.app"

  # Everything the app keeps, including the licence key and its activation for this machine. That
  # is what `zap` is for; a plain `brew uninstall --cask` leaves all of it in place, so the licence
  # is still here when the app is installed again.
  zap trash: [
    "~/Library/Application Support/com.vheissulabs.gitdifferent",
    "~/Library/Caches/com.vheissulabs.gitdifferent",
    "~/Library/HTTPStorages/com.vheissulabs.gitdifferent",
    "~/Library/Preferences/com.vheissulabs.gitdifferent.plist",
    "~/Library/Saved Application State/com.vheissulabs.gitdifferent.savedState",
    "~/Library/WebKit/com.vheissulabs.gitdifferent",
  ]
end

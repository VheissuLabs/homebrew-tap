cask "gitdifferent" do
  version "2.3.0"
  sha256 "5cafd0807b0dfb0c9fbce6d4fbc65a9c65c11a6c71aac535efb76c97f1ae6ae3"

  url "https://vheissulabs.com/download/GitDifferent_#{version}_aarch64.dmg"
  name "GitDifferent"
  desc "Git client built around a three-way merge tool"
  homepage "https://vheissulabs.com/projects/gitdifferent"

  livecheck do
    url "https://github.com/VheissuLabs/GitDifferent-releases/releases/latest"
    strategy :github_latest
  end

  # The app updates itself: it checks on launch, downloads, verifies a signature and restarts. So
  # `brew upgrade` leaves it alone rather than reinstalling over a copy that is already newer.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "GitDifferent.app"

  # Everything the app keeps, including the licence key and its activation for this machine. That
  # is what `zap` is for; a plain `brew uninstall --cask` leaves all of it in place, so the licence
  # is still here when the app is installed again.
  zap trash: [
    "~/Library/Application Support/com.vheissulabs.gitdifferent",
    "~/Library/Caches/com.vheissulabs.gitdifferent",
    "~/Library/Preferences/com.vheissulabs.gitdifferent.plist",
    "~/Library/WebKit/com.vheissulabs.gitdifferent",
  ]
end

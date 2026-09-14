cask "gitdifferent" do
  version "2.1.0"
  sha256 "dfdbc125c6777cc4bac4845c2e7290bab9e38fea82f56941f26881b8172e5d2e"

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

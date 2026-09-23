class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.4.2/tql-macos-aarch64"
      sha256 "418b8061a1efa00247dff23dc505d2e27d5b5707a1dd2ee4a8dd7cd1765d978e"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.4.2/tql-macos-x86_64"
      sha256 "aef853843716e24ec20313a115feb566b29856095e7ebc4b2de92c5e92d86420"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.4.2/tql-linux-aarch64"
      sha256 "975d9b90b3e3efd1f39c62e6d827ce813ca48a8b23aa3b86e7b254b6eae582d6"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.4.2/tql-linux-x86_64"
      sha256 "2672745af9d7368225169f17b9dd51b5f04bd3c9648f021dff627cb073c95b4a"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

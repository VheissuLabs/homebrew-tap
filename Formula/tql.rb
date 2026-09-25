class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.7/tql-macos-aarch64"
      sha256 "49533279b8c32a56018fbf4a4cdf2b0b8fcc3766e6610cd7fdb18c0b75fb09be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.7/tql-linux-aarch64"
      sha256 "4c46c7b3173667e5ce5a005e59b264b42eb7b4b942e9eac636aa512e78e5a61d"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.7/tql-linux-x86_64"
      sha256 "f1b4e2faf5348e574fdf8a5f54c71a46bce904bca5be0458dde5592049b43257"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

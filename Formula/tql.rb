class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.11.0/tql-macos-aarch64"
      sha256 "4187ce5378e259695e6cb732790084e93752073a4fb1dbb818017f322a185421"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.11.0/tql-linux-aarch64"
      sha256 "d7116c94222e705ff8447c4723c710dab2bd2c2af88f70e6915be9f6b5aaae18"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.11.0/tql-linux-x86_64"
      sha256 "35cc6ecf0bf2aef43498276d98211222b0a67be011a8fee47d3c600d3f0f5020"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

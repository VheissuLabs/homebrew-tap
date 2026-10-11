class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.12.0/tql-macos-aarch64"
      sha256 "943f696ad650f80acca1660c864d05a5d048a126a37fefd3acf46c2265bd39d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.12.0/tql-linux-aarch64"
      sha256 "0b490fbcbddd72f74ab9caec3a22e28080c1a7a8a0a274e315b4aa411cc8d9da"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.12.0/tql-linux-x86_64"
      sha256 "33bec7100a984f37dafd5e6aa8ffb4ea6cd65b48fc67b240b7aa0bb11cb13bb4"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

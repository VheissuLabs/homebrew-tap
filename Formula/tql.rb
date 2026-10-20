class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.17.0/tql-macos-aarch64"
      sha256 "fbd98f2e25bc6dc898346fe80aa5ead2008002d9a6ca6fe5966fe0f58ea7b516"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.17.0/tql-linux-aarch64"
      sha256 "e133d4f5691c1fec1de143710efa3681ac300b93abf7f6c6b17c6c52f819d856"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.17.0/tql-linux-x86_64"
      sha256 "5c72a860cae09ae316fe3902c753afd10f155d1818a2c5e692358da18fa1fec5"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

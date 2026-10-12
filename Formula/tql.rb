class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.13.2/tql-macos-aarch64"
      sha256 "5f4bcc48c09bc0e7338c86766aef6ffc22463afb3ddf8c2e78e6098d2ad225c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.13.2/tql-linux-aarch64"
      sha256 "6210ee031fd7539318e00a8897044f60e0dde0303c89b910d62e01464479d0fd"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.13.2/tql-linux-x86_64"
      sha256 "441c193d0fdc8942472acf6a7756cf419778fd0c56fa87f53150b506a8b2100d"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

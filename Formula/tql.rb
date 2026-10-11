class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.13.0/tql-macos-aarch64"
      sha256 "b036b909ed0eb3075ed7dbcba67b71271e084c1aacceb7931a71d5ef99171a64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.13.0/tql-linux-aarch64"
      sha256 "99c6b171b44113c94f00f4e41706e4ee4cc50cfc8b072466a5f4f4b477d02d8c"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.13.0/tql-linux-x86_64"
      sha256 "f2a62693d8c9f48d3153d1c63a6fea5296d5bbf6865f81263d0a75d2d73200fe"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

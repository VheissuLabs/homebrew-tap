class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.14.2/tql-macos-aarch64"
      sha256 "a327c64e156c41dd719a50c011422a3ceadd01fb8b201ca8ff54a6d2fe5bd616"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.14.2/tql-linux-aarch64"
      sha256 "dc0bdb7152d94e069f0e8c6796d0c50a374145421bdc20e107985a8a3aaf8173"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.14.2/tql-linux-x86_64"
      sha256 "b75c609eacf0b7ad1cdc0779eea19c86ecf6ff26c08c7b2074058795571360a9"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

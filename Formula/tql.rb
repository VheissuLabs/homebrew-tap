class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.17.1/tql-macos-aarch64"
      sha256 "be1379cde8b0d89267817d1ef821f88da5fa94b2c29d19098b14c2e23a5a213a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.17.1/tql-linux-aarch64"
      sha256 "678a7f67684fe3b2780cacead571576cf30b5d1f1f5644d9102f3654022cbcfb"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.17.1/tql-linux-x86_64"
      sha256 "d67989e42675af5673c04053623dda3fd69c3854ba4610e53a422e52f2038783"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

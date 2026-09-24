class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.1/tql-macos-aarch64"
      sha256 "ce9bdf935667b446f9d1b1cedf987d237f47d98de1b5b43dc72cb946664592f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.1/tql-linux-aarch64"
      sha256 "8a0426b5fcf321acdb478d5ca32e288e2e7846c04be43d1639d9964c1b9e60d4"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.1/tql-linux-x86_64"
      sha256 "37fe587a61e8c995ac6f186cf1a9cd5a111d4cb9e631b416f2fbf3a4f2efcd4b"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

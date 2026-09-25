class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.5/tql-macos-aarch64"
      sha256 "25952589b9648d0667c362ee32e9bf5811ef22a5a6743f86e931e864fb7d84e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.5/tql-linux-aarch64"
      sha256 "1298041eeb124fb92da3a9f5eb2ddfec41ca2ef087c04fd3441ff25ba70656ea"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.5/tql-linux-x86_64"
      sha256 "b029a4d9459530a1da7cc67893a000584adc564ac88ca9106d77b118e9199b10"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

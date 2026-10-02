class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.7.0/tql-macos-aarch64"
      sha256 "0f889a9ed0da5f5d096647e57af8a0cd087a373cc33d4d89d23b5ec86d9e642f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.7.0/tql-linux-aarch64"
      sha256 "34672c21708ed8e2d5a2f7b0c53c50c396b717b45391e240d86c54dc95e14075"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.7.0/tql-linux-x86_64"
      sha256 "754785b4ccc7100fd6d56a6e26b6f506e05809dae36fab66439d780071a9331c"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

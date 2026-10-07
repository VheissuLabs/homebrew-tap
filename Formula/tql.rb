class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.10.0/tql-macos-aarch64"
      sha256 "9aa339849075f516f0eb7042a50aa8a88f68d9debba03781e2858120daa45997"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.10.0/tql-linux-aarch64"
      sha256 "35d4c37ff4900ca96d2344a698365ea82638539fcef78d01d9f2819778e57099"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.10.0/tql-linux-x86_64"
      sha256 "6f2d1348109e819865f449b5fb4ed5a9eb96268be514d6e931c8971eb9c73dd7"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.13.1/tql-macos-aarch64"
      sha256 "98a99048fbd730ae6285f18a07d25e8faa1b60a41ace797bb7363c193039c7b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.13.1/tql-linux-aarch64"
      sha256 "a2ac510f230325a0a3d82a7aef09cbe42e3f1def69209d99d352754d5d182966"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.13.1/tql-linux-x86_64"
      sha256 "c52ada6cd62e80d3b8babf040276f4cfd19ad4a88421b6fb394d25732f23e299"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

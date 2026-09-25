class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.6/tql-macos-aarch64"
      sha256 "5acb116660667366acd638f529efec8a920403cdadb721e01a17bbc290d18e4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.6/tql-linux-aarch64"
      sha256 "0de2687f08cb472fddd52e1c0b3eabf59195e0269f9149ebb97333e2fcaffbab"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.6/tql-linux-x86_64"
      sha256 "9d717972d4b06847cf207919fa178d842d8d2a8e21abd3d44190a82a8d23238c"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

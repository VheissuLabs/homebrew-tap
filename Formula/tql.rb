class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.4.4/tql-macos-aarch64"
      sha256 "9f48faa166a28075f5d787466d037803cf8a61a817eca5eb110c8447f8b629d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.4.4/tql-linux-aarch64"
      sha256 "352ca9e0f8384317673ec03a44cad88dcbf809a9b1981c0b95fbce2c9e689e6c"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.4.4/tql-linux-x86_64"
      sha256 "76bd9b06a96f147e487a10e1ff74d55ce937a6aade525c55c09dbbfe837cd313"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.3/tql-macos-aarch64"
      sha256 "0507b3992bf8d115ef86ab71e5b3c76ee3d2d56618ff323a7041694ed3c5a14e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.3/tql-linux-aarch64"
      sha256 "4a42872d52d21c2348aab9daccc509f4280794b041d16d66ae22ecec5ee82b9b"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.3/tql-linux-x86_64"
      sha256 "970389dd90cb1fd0de1bf00b2148fc9ed1b6a464e41c1724fe021fe1d05bc321"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

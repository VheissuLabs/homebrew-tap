class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.6.1/tql-macos-aarch64"
      sha256 "7382e3e8af3338bffb6e45ba8f724584c9cedd8b08222094f982d1e18459979d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.6.1/tql-linux-aarch64"
      sha256 "2a84593b9da8eb948112ab2c0702cc1c25d23cec0d82a3dfdbd58278df00a533"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.6.1/tql-linux-x86_64"
      sha256 "86eb0cd5b205a9ba2ddbd5d034fc11da1b0a2cb035da12e5b2a1b3ac871418a2"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

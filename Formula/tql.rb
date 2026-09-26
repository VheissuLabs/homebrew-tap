class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.6.0/tql-macos-aarch64"
      sha256 "6a752a1b0e00f40a28a5e465907451d09208541747557d7db21769fc1df0144b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.6.0/tql-linux-aarch64"
      sha256 "607e1b32189b2d441c87ca5e1e54fe3afa7e92e9d67f3bd70a7a21eaf718381c"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.6.0/tql-linux-x86_64"
      sha256 "f0c3d0ce76bceeb40091e8c353f5231b9c12e232b315d29ed5c28d66819405b3"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

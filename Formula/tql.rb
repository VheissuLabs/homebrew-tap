class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.14.1/tql-macos-aarch64"
      sha256 "ef698166350e1c9560e7a9a9998b6c893fd1e50709c2c3d34430a474dc71afc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.14.1/tql-linux-aarch64"
      sha256 "ff29a0e68b6494a59a4003546f8ac8652406dcfc5526f559b585052ad2501401"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.14.1/tql-linux-x86_64"
      sha256 "20be94ffb34f8a256f4e3eb185b2e2d14a87a82bc57d7a73912f45aaa1577f9d"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

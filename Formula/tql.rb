class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.14.0/tql-macos-aarch64"
      sha256 "9ccf0823fb9c9c3e9502611df46b6c028892e5328a496aea88ea8116b3423e81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.14.0/tql-linux-aarch64"
      sha256 "0b0aaf27ff492938d6558ad1700af165c15448474c7cbed7e71bac3de2075d0c"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.14.0/tql-linux-x86_64"
      sha256 "175dc3b27a3668f4c0891eb78000c56e8f5b9c3ae14c60eb0eb673b020107d92"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

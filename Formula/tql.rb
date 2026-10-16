class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.15.0/tql-macos-aarch64"
      sha256 "e5bef55e3dfd3226cd78592ad33f2b40db05328d656960be34b856b246ec5a76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.15.0/tql-linux-aarch64"
      sha256 "49d5db1e116c9f6c26a681019101ca66b33d9a42fff5feffdd7623c5540200fb"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.15.0/tql-linux-x86_64"
      sha256 "bb02cb04f180e7518e9bbc137c8469197db35cbb276c77855505d738d520ee02"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

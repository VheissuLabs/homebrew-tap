class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.2/tql-macos-aarch64"
      sha256 "77d9f8c5f2f7b1a1c3fcf61661bce462abf2e9cef4ad5065a864b09708ddc5b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.2/tql-linux-aarch64"
      sha256 "46a0456fa076ea007687bfae5f8de418fb614485853f05daecaf17f60d0c9e66"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.2/tql-linux-x86_64"
      sha256 "182bf131fdc8986a1a7044438964f4b54e16ee6bc3dfa0f39b1ce70f2fea42ad"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

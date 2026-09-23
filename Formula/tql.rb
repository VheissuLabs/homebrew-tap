class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.0/tql-macos-aarch64"
      sha256 "358b71a1df2972a263e512d952a14c4f3fd9bd7a33daac6a1ea5316d1061b7f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.0/tql-linux-aarch64"
      sha256 "bf603bb03699c7183f05372f8ee8f85a955f05d9efe79df9ec3b46c3d230c1cc"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.0/tql-linux-x86_64"
      sha256 "c9f99355cf9eca99c10b7b65d402355d980c51133ed5f21ee3ef93c188b88ce9"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

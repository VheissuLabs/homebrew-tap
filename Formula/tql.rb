class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.12.2/tql-macos-aarch64"
      sha256 "a67d42ce828a3ef042372f9de1116e2bd74de727b24ef36e820e678b9ae266f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.12.2/tql-linux-aarch64"
      sha256 "3f4f5ae64509a1105fbeb5c78f2a3cebfaad8884382f1e1ed12d023e7fb27d5f"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.12.2/tql-linux-x86_64"
      sha256 "72f6f35dbaeadd039f257fa3e66f38a9f718d383a078357b908a7df2dc2deb1c"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

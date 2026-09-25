class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.4/tql-macos-aarch64"
      sha256 "f0df2becf296b12cf27c560099a2ed529ce326aee74c059a3337c95a1c2ebfbd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.4/tql-linux-aarch64"
      sha256 "124f77baa25fa3d1886cea32e8e5268656b0277fd8296545cb41ebc74e2965c5"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.5.4/tql-linux-x86_64"
      sha256 "776a9ebb26fd7ebc9b4e116caa6275228ce2ae7955984313282b496c677f5237"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

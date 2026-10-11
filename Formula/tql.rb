class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.12.1/tql-macos-aarch64"
      sha256 "0af94856f5c62260744e2c37a3aab0ea0bb6d786a110a7385b88149cb6a95e96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.12.1/tql-linux-aarch64"
      sha256 "34f05c9a06f879986d50e770bb26093c2a4db9f8cd4de96a1a3cd327891d9aab"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.12.1/tql-linux-x86_64"
      sha256 "1f8cae44a577f52792aeab05b3a9aa9f2d334efcd1ef7d2780e7d4cbad789dab"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

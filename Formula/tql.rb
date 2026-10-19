class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.16.0/tql-macos-aarch64"
      sha256 "fccc33ea6cbed12e7a8b100f90f52798160465c804ceb6c1eb44e1175a88dc2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.16.0/tql-linux-aarch64"
      sha256 "397a5db9e4c732bc0a3286bef2646e5ade3b009e555e14a4bda96753282326ca"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.16.0/tql-linux-x86_64"
      sha256 "c3c50dc992ce64d7001ac944f0d8d5ea4fb824b2fce0e9ec155f5525b96241d3"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.9.0/tql-macos-aarch64"
      sha256 "c225c4b2ec126aebc022dad907de2f7ddef42eb4ad3da515e321590a5ef19a29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.9.0/tql-linux-aarch64"
      sha256 "cf34736cfc2892cb91cc2a82ba969b0e2e76442472f40fff2279d4bb29621796"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.9.0/tql-linux-x86_64"
      sha256 "7b365fd0037be6e815852afb82d1fdde16908b49d94f8d58aa362fd90a313991"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

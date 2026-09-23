class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.4.1/tql-macos-aarch64"
      sha256 "213dbef5f89d6b19ba771cd3428eaf29a3aa0899c33dc5b22a215cea4c7643ec"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.4.1/tql-macos-x86_64"
      sha256 "2f4d8fea5d4cc58145875a879d01ce40b10f25073848ee069928923a25bcbe43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.4.1/tql-linux-aarch64"
      sha256 "d17a3ee35976cf4df28914186ac2f2fd80cb4f968acbf9bd4ae17566f851a062"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.4.1/tql-linux-x86_64"
      sha256 "7f8d14377e3a26c8a7ce0d10f9b70b11d9d40864e87791377263e8a7a77b178a"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

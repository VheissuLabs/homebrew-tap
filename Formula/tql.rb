class Tql < Formula
  desc "Database client for the terminal"
  homepage "https://github.com/VheissuLabs/tql"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.8.0/tql-macos-aarch64"
      sha256 "243f63eddf5851cf92b02f8b7ea122efa8a9fe7378a6f3e5167be3734c890011"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.8.0/tql-linux-aarch64"
      sha256 "89a99c65e53d9f44f29515564bd337f7cd1182057e09811bba3e4e30ba1ea8ae"
    end
    on_intel do
      url "https://github.com/VheissuLabs/tql/releases/download/v0.8.0/tql-linux-x86_64"
      sha256 "6ddc9ade9b9cba41ce58802cf906c07a6a5026fe812621b95d4aec0bdd84c190"
    end
  end

  def install
    bin.install Dir["tql-*"].first => "tql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tql --version")
  end
end

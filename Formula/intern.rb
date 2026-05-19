class Intern < Formula
  desc "Linter for PowerPoint files — catches misaligned boxes, inconsistent fonts, and sloppy text"
  homepage "https://github.com/markusz/intern"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/markusz/intern/releases/download/v#{version}/intern-aarch64-apple-darwin.tar.gz"
      sha256 "699c568c07ae4e280dee6783f305be2213cc867306b1ba06ffef0e51a2da18af"
    else
      url "https://github.com/markusz/intern/releases/download/v#{version}/intern-x86_64-apple-darwin.tar.gz"
      sha256 "6bd3c209b355ceb56799edaf9acd9c6be0e5d10a8526b8554a1d19b278c00a9a"
    end
  end

  on_linux do
    url "https://github.com/markusz/intern/releases/download/v#{version}/intern-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4107f1ef74c31820f8a94d11272806dab5d6a03692ec5d77c954076107c29a8c"
  end

  def install
    bin.install "intern"
  end

  test do
    system bin/"intern", "--version"
  end
end

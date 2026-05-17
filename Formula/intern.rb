class Intern < Formula
  desc "Linter for PowerPoint files — catches misaligned boxes, inconsistent fonts, and sloppy text"
  homepage "https://github.com/markusz/intern"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/markusz/intern/releases/download/v#{version}/intern-aarch64-apple-darwin.tar.gz"
      sha256 "13cf3ab13bef9fd7cb20b4ff3a13ed181cc2f08980f5d422def2f4295980421e"
    else
      url "https://github.com/markusz/intern/releases/download/v#{version}/intern-x86_64-apple-darwin.tar.gz"
      sha256 "6a6ec3d8f39364cbfe4b6d28a324149170c7b00207ddad115f4cdb68e61200a3"
    end
  end

  on_linux do
    url "https://github.com/markusz/intern/releases/download/v#{version}/intern-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c45587f0c9562d7fb6783d7ad9d0f75c4a23d1df5899ae2e3b23dbbd3a417be8"
  end

  def install
    bin.install "intern"
  end

  test do
    system bin/"intern", "--version"
  end
end

class Intern < Formula
  desc "Linter for PowerPoint files — catches misaligned boxes, inconsistent fonts, and sloppy text"
  homepage "https://github.com/markusz/intern"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/markusz/intern/releases/download/v#{version}/intern-aarch64-apple-darwin.tar.gz"
      sha256 "09b45a5577edf89b2399065361be633a4f5e1b50a2fb775eadf1a32df7f60ab1"
    else
      url "https://github.com/markusz/intern/releases/download/v#{version}/intern-x86_64-apple-darwin.tar.gz"
      sha256 "3e3b7df212f2fd093478d64255cc8de9bf6fa8806bc3d268b7b81658dcc0acc2"
    end
  end

  on_linux do
    url "https://github.com/markusz/intern/releases/download/v#{version}/intern-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4f5c0c75cdee1b87e1b19daa01683e322858e1fac537b7552f58a30f5dc47010"
  end

  def install
    bin.install "intern"
  end

  test do
    system bin/"intern", "--version"
  end
end

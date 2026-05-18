class Intern < Formula
  desc "Linter for PowerPoint files — catches misaligned boxes, inconsistent fonts, and sloppy text"
  homepage "https://github.com/markusz/intern"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/markusz/intern/releases/download/v#{version}/intern-aarch64-apple-darwin.tar.gz"
      sha256 "65dda283a32f75dca293dc5ae446f75bacfa9e1893771799967340c3db95a534"
    else
      url "https://github.com/markusz/intern/releases/download/v#{version}/intern-x86_64-apple-darwin.tar.gz"
      sha256 "b45a9da8b157d2aafa24eb62695e1297051f74ce136123451d0c2b58c0ac6359"
    end
  end

  on_linux do
    url "https://github.com/markusz/intern/releases/download/v#{version}/intern-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "49d9458d66d8c5101f2735c2e90ad63c7bdf99fe6f2d62350ebe2d1d0d49c592"
  end

  def install
    bin.install "intern"
  end

  test do
    system bin/"intern", "--version"
  end
end

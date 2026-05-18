class Intern < Formula
  desc "Linter for PowerPoint files — catches misaligned boxes, inconsistent fonts, and sloppy text"
  homepage "https://github.com/markusz/intern"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/markusz/intern/releases/download/v#{version}/intern-aarch64-apple-darwin.tar.gz"
      sha256 "3f64ef47c0da0b62eb4191b6ccb757dc531c892103cf2f33d1edd00fcff20997"
    else
      url "https://github.com/markusz/intern/releases/download/v#{version}/intern-x86_64-apple-darwin.tar.gz"
      sha256 "734ab30e5a11b31ad65b604b0e22aec519e16465a2d18220adc47d09f473daed"
    end
  end

  on_linux do
    url "https://github.com/markusz/intern/releases/download/v#{version}/intern-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f285c9ffc0bb06d708981d0589e0964df0d946a3d345ac0bf5fd78ba6a0c75a2"
  end

  def install
    bin.install "intern"
  end

  test do
    system bin/"intern", "--version"
  end
end

# Homebrew Formula for nimbus
# To use: brew tap ryoupr/tap && brew install nimbus

class Nimbus < Formula
  desc "High-performance EC2 SSM connection manager"
  homepage "https://github.com/ryoupr/nimbus"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryoupr/nimbus/releases/download/v#{version}/nimbus-darwin-x86_64.tar.gz"
      sha256 "1881878feb0ba33a6b1d1942722f9752a83f1359244b78dae245f636a37e7e55"
    end
    on_arm do
      url "https://github.com/ryoupr/nimbus/releases/download/v#{version}/nimbus-darwin-arm64.tar.gz"
      sha256 "41838ffbdcfbc8d14a527dcd087a468fd8dadb49e0b8c4a94806bf8bcd9c208c"
    end
  end

  def install
    bin.install "nimbus"
  end

  test do
    system "#{bin}/nimbus", "--version"
  end
end

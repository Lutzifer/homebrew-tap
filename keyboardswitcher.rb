class Keyboardswitcher < Formula
  desc "Tool that allows to switch Keyboard layouts from the command-line"
  homepage "https://github.com/Lutzifer/keyboardSwitcher"
  url "https://github.com/Lutzifer/keyboardSwitcher/releases/download/v2.4.0/keyboardSwitcher"
  version "2.4.0"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  def install
    bin.install("keyboardSwitcher")
  end

  test do
    system "keyboardSwitcher"
  end
end

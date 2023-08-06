class Keyboardswitcher < Formula
  desc "Tool that allows to switch Keyboard layouts from the command-line"
  homepage "https://github.com/Lutzifer/keyboardSwitcher"
  url "https://github.com/Lutzifer/keyboardSwitcher/archive/1.0.3.tar.gz"
  version "1.0.3"
  sha256 "e0d005105fd3972f6d3f4a0a4c71dc0112d4f8168b06503c98620653b5a4aa72"

  def install
    xcodebuild
    bin.install("build/release/keyboardSwitcher")
  end

  test do
    system "keyboardSwitcher"
  end
end

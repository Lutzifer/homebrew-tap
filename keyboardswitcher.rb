class Keyboardswitcher < Formula
  desc "Tool that allows to switch Keyboard layouts from the command-line"
  homepage "https://github.com/Lutzifer/keyboardSwitcher"
  url "https://github.com/Lutzifer/keyboardSwitcher/releases/download/v2.3.0/keyboardSwitcher"
  version "2.3.0"
  sha256 "642dcae1c02a21507f6a6f03be29efb49033e19b90f9069bda5d3df8ed3d1bb3"

  def install
    bin.install("keyboardSwitcher")
  end

  test do
    system "keyboardSwitcher"
  end
end

class ReplaceAlias < Formula
  desc "A Swift tool to replace macOS alias files or symbolic links with their original content."
  homepage "https://github.com/Lutzifer/aliasReplacer"
  url "https://github.com/Lutzifer/ReplaceAlias/releases/download/v0.1.0/ReplaceAlias"
  version "0.1.0"
  sha256 "8f32a2603c6f43f1cc63c5416635f235cae2fe20583488d66c338b845c44a9ee"

  def install
    bin.install("ReplaceAlias")
  end

  test do
    system "ReplaceAlias"
  end
end

class HaskellStackAT193 < Formula
  version "1.9.3"
  desc "Backport of haskell-stack version 1.9.3"
  homepage "https://haskellstack.org/"
  url "https://github.com/commercialhaskell/stack/releases/download/v1.9.3/stack-1.9.3-osx-x86_64.tar.gz"
  sha256 "05ff745b88fb24911aa6b7e2b2e7098f04c2fdf769f00f921d44ffecbc417bc2"

  # depends_on "cmake" => :build

  def install
    (prefix/"haskellstack").install Dir["./*"]
    Dir.glob(prefix/"haskellstack/stack") { |file| bin.install_symlink file }
  end
end

class LanguageclientNeovim < Formula
  desc "Language Server Protocol (LSP) support for vim and neovim."
  homepage "https://github.com/autozimu/LanguageClient-neovim"
  version "0.1.161"
  url "https://github.com/autozimu/LanguageClient-neovim/archive/refs/tags/#{version}.tar.gz"
  sha256 "0fc542e3f188ea998fdd74372d45f522be94614a04011cb11b244d81b25a738c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "make", "release"
    ["autoload", "bin", "doc", "plugin", "rplugin"].each do |d|
      (share/"nvim"/"runtime").install d
    end
  end

  test do
  end
end

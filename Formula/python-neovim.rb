class PythonNeovim < Formula
  include Language::Python::Virtualenv

  desc "Python client and plugin host for Nvim"
  homepage "http://pynvim.readthedocs.io/en/latest/"
  url "https://github.com/neovim/pynvim/archive/refs/tags/0.4.3.tar.gz"
  sha256 "e7c9de44b0201ad874a608270b7a9b10fd48bda65f49bada05815d973ca79391"
  license "Apache-2.0"

  depends_on "python"

  resource "msgpack" do
    url "https://files.pythonhosted.org/packages/61/3c/2206f39880d38ca7ad8ac1b28d2d5ca81632d163b2d68ef90e46409ca057/msgpack-1.0.3.tar.gz"
    sha256 "51fdc7fb93615286428ee7758cecc2f374d5ff363bdd884c7ea622a7a327a81e"
  end

  resource "greenlet" do
    url "https://files.pythonhosted.org/packages/0c/10/754e21b5bea89d0e73f99d60c83754df7cc64db74f47d98ab187669ce341/greenlet-1.1.2.tar.gz"
    sha256 "e30f5ea4ae2346e62cedde8794a56858a67b878dd79f7df76a0767e356b1744a"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "false"
  end
end

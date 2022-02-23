class Cloudflared < Formula
  desc "Argo Tunnel client"
  homepage "https://developers.cloudflare.com/argo-tunnel/"
  url "https://github.com/cloudflare/cloudflared/archive/refs/tags/2022.2.1.tar.gz"
  sha256 "4c1401d2d5a0fa13d91020cf117ca2a0190e0a8a455ff66330a7409c229d11a1"
  license "Proprietary"

  depends_on "go" => :build

  def install
    system "make", "cloudflared"
    bin.install "cloudflared"
  end

  test do
    tunnel_list_output = shell_output("cloudflared tunnel list 2>&1", 1)
    assert_match "Cannot determine default origin certificate path.", tunnel_list_output
  end
end

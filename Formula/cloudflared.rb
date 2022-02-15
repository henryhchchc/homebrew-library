class Cloudflared < Formula
  desc "Argo Tunnel client"
  homepage "https://developers.cloudflare.com/argo-tunnel/"
  url "https://github.com/cloudflare/cloudflared/archive/refs/tags/2022.2.0.tar.gz"
  sha256 "5be822b9d6df9f53bb52e6670921922aeeb13705d66605f831ab68bb902c316a"
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

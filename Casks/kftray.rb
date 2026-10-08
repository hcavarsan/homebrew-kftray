cask "kftray" do
    version "0.30.0"
    sha256 "dbbab626a89dfa98b426d8e3c6d3071f5fab7d51fd9ec57bb298c9985258f538"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.30.0/kftray_0.30.0_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

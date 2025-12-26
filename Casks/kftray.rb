cask "kftray" do
    version "0.27.7"
    sha256 "cd5bacb2152b0b5182c6d8027c9595bd492feb29714339dd25f4a10e35b13a1a"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.7/kftray_0.27.7_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

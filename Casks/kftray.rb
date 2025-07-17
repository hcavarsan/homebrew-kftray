cask "kftray" do
    version "0.20.2"
    sha256 "c8ba9a31256a74fb2251f24cfec4fce978568562e905d2265724514bed734074"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.20.2/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

cask "kftray" do
    version "0.24.2"
    sha256 "86d876e022af57ee0b6e6ff5843caab7cd41560285c6bb3e7bc52904ab1fbe5a"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.24.2/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

cask "kftray" do
    version "0.25.2"
    sha256 "84842050aa66b0e53544006c125f6e6ea2cfbeb5246ce8b0e3245328f76bbc5e"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.25.2/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

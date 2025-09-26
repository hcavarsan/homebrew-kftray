cask "kftray" do
    version "0.26.3"
    sha256 "63be4f2aa9c7b6c44995e235104cc72a53fca7fe34c3cf0d7e678f6f5a00eecf"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.26.3/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

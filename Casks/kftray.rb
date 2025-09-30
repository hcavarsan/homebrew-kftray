cask "kftray" do
    version "0.26.7"
    sha256 "85b007599b71789b759cf394015dd9b2ffd14c0cec25e329a8b1d98e30555cf3"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.26.7/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

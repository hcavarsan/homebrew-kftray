cask "kftray" do
    version "0.26.5"
    sha256 "ce71fa1aed1a26d7e3ab9dd1c0f5ba4d0c0b5ae23c925e395e0e85a374c4cc01"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.26.5/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

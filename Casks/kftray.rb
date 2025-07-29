cask "kftray" do
    version "0.20.4"
    sha256 "e3b694ae6754a1dc787d04695a5dcc722ad3ed63401eb6fe14ead35b0bee704f"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.20.4/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

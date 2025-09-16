cask "kftray" do
    version "0.25.1"
    sha256 "4612d13ad1cb068d2b140b8347a1b55e3604a7f5bb01f4e1dceb4ef1073fd14b"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.25.1/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

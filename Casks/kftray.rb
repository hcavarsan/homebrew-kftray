cask "kftray" do
    version "0.20.5"
    sha256 "2f729b4310b2ab73d8b2fe74bec7ee39d7acdb1df81d14d45458ddfde0bef409"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.20.5/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

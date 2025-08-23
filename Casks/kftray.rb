cask "kftray" do
    version "0.22.1"
    sha256 "3215e8b0d420f79e33615b2480095b1f20cbcd9bac02318dc5a1be8fe62fea73"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.22.1/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

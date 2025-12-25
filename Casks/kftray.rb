cask "kftray" do
    version "0.27.5"
    sha256 "ba30f62fc2e55728d31f41a1aa554ec2b9c8272b5d0e465ddc35c59f27b787a5"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.27.5/kftray_0.27.5_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

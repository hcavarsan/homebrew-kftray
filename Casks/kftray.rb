cask "kftray" do
    version "0.24.1"
    sha256 "12fcb5e0e6b82c57fb5737605aceac7abe618b0bc572e29f19efd47b3768409a"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.24.1/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

cask "kftray" do
    version "0.23.6"
    sha256 "5a559e8b661433443b2c92bfa546bb1aa115e7573ce2aba3dd205b42cef4a211"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.23.6/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

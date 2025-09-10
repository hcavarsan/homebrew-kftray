cask "kftray" do
    version "0.23.7"
    sha256 "6148c1fab5cd48cb965700d49740ca7422701049a440a5430d5927e7ad9da06c"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.23.7/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

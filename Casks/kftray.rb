cask "kftray" do
    version "0.26.1"
    sha256 "be8ed72233a4485cc72fed0d908af638430eceb4268e3dbbc6916339c7d12ce0"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.26.1/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

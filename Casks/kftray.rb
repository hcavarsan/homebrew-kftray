cask "kftray" do
    version "0.23.4"
    sha256 "ef2189ffe79fabe9e4997c99ceba39d10870ee055ae88fc3a43caf89fb8e2699"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.23.4/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

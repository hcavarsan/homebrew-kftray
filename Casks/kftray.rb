cask "kftray" do
    version "0.16.0"
    sha256 "4dd4480b7856b1360f3b07cf19ba40afeace0c95c4d2cf96d9852c12154014a7"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.16.0/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

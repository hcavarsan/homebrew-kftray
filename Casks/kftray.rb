cask "kftray" do
    version "0.26.0"
    sha256 "3bebbda365af039707e30a8c3304825e4e7d565aef9efe356b4f05ed84d468f9"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.26.0/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

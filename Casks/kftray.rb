cask "kftray" do
    version "0.15.7"
    sha256 "aba8557d0d338f86848eceadd7a0dcc1b82d0592329a3ef0b1cc362233461989"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.15.7/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

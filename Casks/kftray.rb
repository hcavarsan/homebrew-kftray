cask "kftray" do
    version "0.23.1"
    sha256 "a65b93eb75358812f793fb8fb9513706617fdd232a87ee2d1d75f7a7b1c7f771"

    url "https://github.com/hcavarsan/kftray/releases/download/v0.23.1/kftray_universal.app.tar.gz"
    name "kftray"
    desc "A tray to manage your Kubernetes port-forwarding"
    homepage "https://kftray.app"

    app "kftray.app"
  end

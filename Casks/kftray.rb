cask "kftray" do
    version :latest
    sha256 :no_check

    url "https://github.com/hcavarsan/kftray/releases/latest/download/kftray-macos.zip"
    name "kftray"
    desc "A tray app with Tauri and React"
    homepage "https://github.com/hcavarsan/kftray"

    app "kftray.app"

    zap trash: [
      "~/Library/Application Support/kftray",
      "~/Library/Preferences/com.kftray.app.plist",
      "~/Library/Saved Application State/com.kftray.app.savedState",
    ]

    caveats <<~EOS
      To link kftray to the Applications folder, you can run the following command:
        ln -sf #{staged_path}/kftray.app /Applications/kftray.app
    EOS
  end

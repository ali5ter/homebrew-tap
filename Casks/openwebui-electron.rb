cask "openwebui-electron" do
  version "0.1.7"
  sha256 "e50d6f95116f142fac76d454381b647f84f1123dd3bd32206a4f6738685fd8b6"

  url "https://github.com/ali5ter/openwebui-electron/releases/download/v#{version}/OpenWebUI-#{version}-arm64.dmg"
  name "OpenWebUI"
  desc "Desktop app for local OpenWebUI instances"
  homepage "https://github.com/ali5ter/openwebui-electron"

  app "OpenWebUI.app"

  uninstall quit: "com.openwebui.desktop"

  caveats <<~EOS
    This app is ad-hoc signed, not notarized. On first launch, macOS may show a warning.

    In Finder, open the Applications folder, right-click OpenWebUI.app, choose
    **Open**, then click **Open** in the dialog.
    Or run: xattr -d com.apple.quarantine /Applications/OpenWebUI.app

    If OpenWebUI runs on another machine, allow the app under
    System Settings > Privacy & Security > Local Network when macOS asks.
  EOS
end

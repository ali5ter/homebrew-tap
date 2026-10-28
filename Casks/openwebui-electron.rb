cask "openwebui-electron" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "7eb40808121234cca483d47217fcdfdfea0166785977a00ddf6436eb6567df22",
         intel: "ab7e38acfc70112d1e566bd629cb73aaf0e487d834661d8259eb4820054ebd1d"

  url "https://github.com/ali5ter/openwebui-electron/releases/download/v#{version}/OpenWebUI-#{version}-#{arch}.dmg"
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

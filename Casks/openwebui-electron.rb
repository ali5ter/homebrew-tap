cask "openwebui-electron" do
  version "0.1.6"
  sha256 "959e98d1f171d79d3a158623d3f3b308f9a497bf8d48a9054080616f4d996e94"

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

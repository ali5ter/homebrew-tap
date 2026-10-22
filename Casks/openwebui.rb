cask "openwebui" do
  version "0.1.0"
  sha256 "7518ae8a4d52d40a33dd03e4a6dce0dd2f684113c67bc7f0fc31083472725aa2"

  url "https://github.com/ali5ter/openwebui-electron/releases/download/v#{version}/OpenWebUI-#{version}-arm64.dmg"
  name "OpenWebUI"
  desc "Desktop app for local OpenWebUI instances"
  homepage "https://github.com/ali5ter/openwebui-electron"

  app "OpenWebUI.app"

  uninstall quit: "com.openwebui.desktop"

  caveats <<~EOS
    This app is unsigned. On first launch, macOS may show a warning.

    In Finder, open the Applications folder, right-click OpenWebUI.app, choose
    **Open**, then click **Open** in the dialog.
    Or run: xattr -d com.apple.quarantine /Applications/OpenWebUI.app
  EOS
end

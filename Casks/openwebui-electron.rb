cask "openwebui-electron" do
  version "0.1.5"
  sha256 "e6c6f3517ed70880b2c907b501a9bbcec6119028c1f34c5f8493faf2c01af03c"

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

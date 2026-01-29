cask "dimescheduler-setup" do
  version "0.10.10"
  sha256 "b012a532daabd91206655fb63989c002bdd25f6a84b7c54529d52b7b2fd591e0"

  url "https://stdimescheduler.blob.core.windows.net/setup/v#{version}/dimescheduler-setuppackagebuilder_0.10.10_universal.dmg"
  name "Dime.Scheduler Setup Package Builder"
  desc "DSL configuration tool for Dime.Scheduler"
  homepage "https://www.dimescheduler.com"

  livecheck do
    url "https://github.com/dime-scheduler/dsl/releases/latest"
    strategy :github_latest
  end

  app "dimescheduler-setuppackagebuilder.app"

  zap trash: [
    "~/Library/Application Support/com.dimesoftware.dimescheduler.setup-package-builder",
    "~/Library/Caches/com.dimesoftware.dimescheduler.setup-package-builder",
    "~/Library/Preferences/com.dimesoftware.dimescheduler.setup-package-builder.plist",
    "~/Library/Saved Application State/com.dimesoftware.dimescheduler.setup-package-builder.savedState",
  ]
end

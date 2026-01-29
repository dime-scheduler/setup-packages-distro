cask "dimescheduler-setup" do
  version "0.10.12"
  sha256 "7493949c6f1fdaa764e8bbb3bb3953d698f7b06165995923f5b96739ab84223f"

  url "https://stdimescheduler.blob.core.windows.net/setup/v#{version}/Dime.Scheduler%20Setup%20Package%20Builder_0.10.12_universal.dmg"
  name "Dime.Scheduler Setup Package Builder"
  desc "DSL configuration tool for Dime.Scheduler"
  homepage "https://www.dimescheduler.com"

  livecheck do
    url "https://github.com/dime-scheduler/dsl/releases/latest"
    strategy :github_latest
  end

  app "Dime.Scheduler Setup Package Builder.app"

  zap trash: [
    "~/Library/Application Support/com.dimesoftware.dimescheduler.setup-package-builder",
    "~/Library/Caches/com.dimesoftware.dimescheduler.setup-package-builder",
    "~/Library/Preferences/com.dimesoftware.dimescheduler.setup-package-builder.plist",
    "~/Library/Saved Application State/com.dimesoftware.dimescheduler.setup-package-builder.savedState",
  ]
end

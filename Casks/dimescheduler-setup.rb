cask "dimescheduler-setup" do
  version "0.10.9"
  sha256 "1ed4a9ac3f2d5efe18aa20952433132e794d49970f99b337bf05b0dfa7a667ea"

  url "https://stdimescheduler.blob.core.windows.net/setup/v#{version}/dimescheduler-setuppackagebuilder_0.10.9_universal.dmg"
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

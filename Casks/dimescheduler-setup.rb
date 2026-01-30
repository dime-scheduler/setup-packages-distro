cask "dimescheduler-setup" do
  version "0.11.3"
  sha256 "12ac80542548c1f059a88c52eb18ca865a0ec6b931a03eccb3b118e880ab890e"

  url "https://stdimescheduler.blob.core.windows.net/setup/v#{version}/Dime.Scheduler%20Setup%20Package%20Builder_0.11.3_universal.dmg"
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

cask "prpilot" do
  version "0.15.0"
  sha256 "ba7cb7a339b019b48605cb20d84bef53fa9c10ed7f5f9efd353de58da1098e90"

  url "https://github.com/ordishs/PRPilot/releases/download/v#{version}/PRPilot-#{version}.dmg"
  name "PR Pilot"
  desc "Native PR review workflow with embedded Claude terminal and native diff"
  homepage "https://github.com/ordishs/PRPilot"

  depends_on macos: :sonoma
  depends_on formula: "gh"

  app "PR Pilot.app", target: "PRPilot.app"

  zap trash: [
    "~/Library/Application Support/PRPilot",
    "~/Library/Preferences/com.ordishs.PRPilot.plist",
    "~/Library/Saved Application State/com.ordishs.PRPilot.savedState",
  ]
end

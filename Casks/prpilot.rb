cask "prpilot" do
  version "0.10.1"
  sha256 "28fb335b7e4faf3e2997d44c14cead2debaa09e7b0ebcef8083a8d71511c35a8"

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

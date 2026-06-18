cask "prpilot" do
  version "0.2.2"
  sha256 "9912a6d7ad1bbb4f4618b95a6626bc9e3fa971d0a294b5415b3760594167e66a"

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

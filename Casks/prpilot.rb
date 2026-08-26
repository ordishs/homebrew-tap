cask "prpilot" do
  version "0.7.0"
  sha256 "9f6632609bd15ba8be0c8ea6e4a6bb50609081b1f2291d67f114d9021727aa97"

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

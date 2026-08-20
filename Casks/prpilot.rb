cask "prpilot" do
  version "0.5.0"
  sha256 "cee060d842a8e960b6783f9268b8032d8218ae5e596e7e1f0c4275b28e4c30d7"

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

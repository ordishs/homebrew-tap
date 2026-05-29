cask "prreview" do
  version "0.1.1"
  sha256 "8434061beb09893c20da66eb31a1c77159c28f444347ebcfbcd0aaff891c865e"

  url "https://github.com/ordishs/PRReview/releases/download/v#{version}/PRReview-#{version}.dmg"
  name "PR Review"
  desc "Native PR review workflow with embedded Claude terminal and native diff"
  homepage "https://github.com/ordishs/PRReview"

  depends_on macos: :sonoma
  depends_on formula: "gh"

  app "PRReview.app"

  zap trash: [
    "~/Library/Application Support/PRReview",
    "~/Library/Preferences/com.ordishs.PRReview.plist",
    "~/Library/Saved Application State/com.ordishs.PRReview.savedState",
  ]
end

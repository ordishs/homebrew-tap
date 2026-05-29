cask "prreview" do
  version "0.1.0"
  sha256 "76e4f78ae32b7ff5acff2c0f93325699714032e5f68e6859f77e8dfe46f4a0b9"

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

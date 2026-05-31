cask "prreview" do
  version "0.1.2"
  sha256 "811cd13fda79aa6b05e16ad94e3ed4f9bb3f657eaa86632d208c4830097c6963"

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

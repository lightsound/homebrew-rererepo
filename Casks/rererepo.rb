# rererepo 🧹 — https://rererepo.com/
#
# The cask points at the FIXED-NAME DMG on dl.rererepo.com, which release CI overwrites with
# every publish, so `version :latest` + `sha256 :no_check` is the only shape that stays
# installable without a bump per release. Integrity/authenticity comes from Apple: the DMG and
# the app inside are Developer ID signed and notarized, and Gatekeeper checks both on launch.
# The app also verifies its own updates (Ed25519 manifest + Apple chain) once installed.
#
# STABLE SWAP: when 1.0.0 ships, change `url` to
#   https://dl.rererepo.com/stable-macos-arm64-rererepo.dmg
# and `app` to "rererepo.app" (stable bundles drop the channel suffix). Same edits as the
# download button on rererepo.com (site/index.html in the app repo).
cask "rererepo" do
  version :latest
  sha256 :no_check

  url "https://dl.rererepo.com/canary-macos-arm64-rererepo-canary.dmg"
  name "rererepo"
  desc "Audit and tidy up your GitHub repositories"
  homepage "https://rererepo.com/"

  # The app updates itself (verified auto-update); `brew upgrade` skips it unless --greedy.
  auto_updates true
  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "rererepo-canary.app"

  uninstall quit: "com.rererepo.app"

  zap trash: [
    "~/.config/rererepo",
  ]

  caveats <<~EOS
    rererepo is free, provided AS IS on a best-effort basis (no SLA).
      Terms:   https://rererepo.com/eula
      Privacy: https://rererepo.com/privacy

    While rererepo is on the canary channel (0.x) the bundle is named
    "rererepo-canary.app". Your GitHub token lives in the macOS Keychain
    (service "com.rererepo.app"); sign out in the app before uninstalling
    if you want it removed — `brew zap` cannot touch the Keychain.
  EOS
end

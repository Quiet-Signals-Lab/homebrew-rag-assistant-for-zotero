cask "rag-assistant-for-zotero" do
  version "0.4.5"
  sha256 "86ae7877756b53ce3adc6815c71b8d9dbda9cc84d1ace8544344f3661fc99d75"

  url "https://github.com/Quiet-Signals-Lab/RAG-Assistant-for-Zotero/releases/download/v#{version}/RAG.Assistant-#{version}-mac-arm64.dmg"
  name "RAG Assistant for Zotero"
  desc "AI-powered research assistant for your Zotero library"
  homepage "https://github.com/Quiet-Signals-Lab/RAG-Assistant-for-Zotero"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "RAG Assistant.app"

  caveats <<~EOS
    macOS Gatekeeper will block this app on first launch because it is not notarized.
    To allow it, run:
      xattr -cr /Applications/RAG\\ Assistant.app
    Then open the app normally.
  EOS

  zap trash: [
    "~/Library/Application Support/rag-assistant",
    "~/Library/Preferences/com.electron.rag-assistant.plist",
    "~/Library/Saved Application State/com.electron.rag-assistant.savedState",
  ]
end

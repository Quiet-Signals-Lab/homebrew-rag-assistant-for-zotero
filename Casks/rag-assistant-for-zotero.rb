cask "rag-assistant-for-zotero" do
  version "0.6.0"
  sha256 "4e2dd79e596ad022c3902cc53771c0b56eaeb55032ec36c1638ba8c8a3979818"

  url "https://github.com/Quiet-Signals-Lab/RAG-Assistant-for-Zotero/releases/download/v#{version}/RAG.Assistant-0.6.0-mac-arm64.dmg"
  name "RAG Assistant for Zotero"
  desc "AI-powered research assistant for your Zotero library"
  homepage "https://github.com/Quiet-Signals-Lab/RAG-Assistant-for-Zotero"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "RAG Assistant.app"

  zap trash: [
    "~/Library/Application Support/RAG Assistant",
    "~/Library/Preferences/com.aahepburn.zotero-rag.plist",
    "~/Library/Saved Application State/com.aahepburn.zotero-rag.savedState",
  ]
end

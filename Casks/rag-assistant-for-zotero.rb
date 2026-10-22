cask "rag-assistant-for-zotero" do
  version "0.7.2"
  sha256 "1b7ffd1a88c9d238a9e455316a4779af8809574f3e4f5e358b0abed4e16cd7a4"

  url "https://github.com/Quiet-Signals-Lab/RAG-Assistant-for-Zotero/releases/download/v#{version}/RAG.Assistant-0.7.2-mac-arm64.dmg"
  name "RAG Assistant for Zotero"
  desc "RAG tooling, reimagined with researchers in mind: literature discovery and review via semantic search of your Zotero PDF collection"
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

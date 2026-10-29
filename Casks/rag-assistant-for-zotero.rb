cask "rag-assistant-for-zotero" do
  version "0.7.3"
  sha256 "9ee1ac6ce6d8bb1b6e4bb8ee138aaa53d3ca8186720333ebc9cce3644175f543"

  url "https://github.com/Quiet-Signals-Lab/RAG-Assistant-for-Zotero/releases/download/v#{version}/RAG.Assistant-0.7.3-mac-arm64.dmg"
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

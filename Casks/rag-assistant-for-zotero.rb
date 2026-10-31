cask "rag-assistant-for-zotero" do
  version "0.7.4"
  sha256 "f69cb8ab493f27bb7cdb4f5a03eb13f7b3e9d6eddf41c1fe85d3983b3f420aad"

  url "https://github.com/Quiet-Signals-Lab/RAG-Assistant-for-Zotero/releases/download/v#{version}/RAG.Assistant-0.7.4-mac-arm64.dmg"
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

cask "rag-assistant-for-zotero" do
  version "0.4.5"
  sha256 "417265d71082f297eeab3c606f21de5ac0b5caa83813c2efc8031f678db2bb13"

  url "https://github.com/aahepburn/RAG-Assistant-for-Zotero/releases/download/v#{version}/RAG.Assistant-#{version}-mac-arm64.dmg"
  name "RAG Assistant for Zotero"
  desc "AI-powered research assistant for your Zotero library"
  homepage "https://github.com/aahepburn/RAG-Assistant-for-Zotero"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "RAG Assistant.app"

  zap trash: [
    "~/Library/Application Support/rag-assistant",
    "~/Library/Preferences/com.aahepburn.zotero-rag.plist",
    "~/Library/Saved Application State/com.aahepburn.zotero-rag.savedState",
  ]
end

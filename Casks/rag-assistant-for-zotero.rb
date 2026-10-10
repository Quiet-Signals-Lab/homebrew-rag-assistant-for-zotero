cask "rag-assistant-for-zotero" do
  version "0.6.0"
  sha256 "37c7b85a689b818a894e9361428a728d411bd33f9309c36022e5344fe26243b8"

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

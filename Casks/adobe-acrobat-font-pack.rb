cask "adobe-acrobat-font-pack" do
  version "21.007.20091"
  sha256 "3fb67cc3140de22bde3beb9483fce484992c810ff4cf63c7f0c943cf861a3dd8"

  url "https://ardownload3.adobe.com/pub/adobe/reader/mac/AcrobatDC/misc/FontPack#{version.no_dots}_XtdAlf_Lang_DC.dmg"
  name "Font Pack fro Adobe Acrobat"
  desc "Extended Asian Fonts for Adobe Acrobat"
  homepage "https://helpx.adobe.com/acrobat/kb/macintosh-font-packs--acrobat---reader-.html"

  pkg "FontPack#{version.no_dots}_XtdAlf_Lang_DC.pkg"

  uninstall pkgutil: "com.adobe.Reader.fontpack.DC.Xtd_Lang.pkg"

  caveats <<~EOS
      This cask will install and work only when adobe-acrobat-reader or adobe-acrobat-pro is installed.
    EOS
end

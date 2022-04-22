cask "adobe-acrobat-font-pack" do
  version "22.001.20085"
  sha256 "d485dd59eb5097e207e4f10c73dc72ed686157c9527906edeabe576ffa3f7adc"

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

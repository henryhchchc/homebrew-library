cask "jetbrains-runtime" do
  version "17.0.2,396.4"
  sha256 "b0ab3a420252f86249f504779db5726db69d35aa1cf8c089d3d47c2d348973ff"

  url "https://cache-redirector.jetbrains.com/intellij-jbr/jbrsdk_jcef-#{version.csv.first}-osx-aarch64-b#{version.csv.second}.pkg"
  name "JetBrains Runtime"
  desc "Runtime environment based on OpenJDK for running JetBrains products"
  homepage "https://github.com/JetBrains/JetBrainsRuntime"

  pkg "jbrsdk_jcef-#{version.before_comma}-osx-aarch64-b#{version.after_comma}.pkg"

  uninstall pkgutil: "com.jetbrains.jbrsdk"
end

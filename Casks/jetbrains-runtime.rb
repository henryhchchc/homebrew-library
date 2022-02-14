cask "jetbrains-runtime" do
  version "17.0.2,315.1"
  sha256 "9ca077493d6f3fc0cb9194548ca80518cdcd69430734b5f34dde17361d05af0a"

  url "https://cache-redirector.jetbrains.com/intellij-jbr/jbrsdk-#{version.csv.first.dots_to_underscores}-osx-aarch64-b#{version.csv.second}.pkg"
  name "jetbrains-runtime"
  desc "Runtime environment based on OpenJDK for running JetBrains products"
  homepage "https://github.com/JetBrains/JetBrainsRuntime"

  pkg "jbrsdk-#{version.before_comma.dots_to_underscores}-osx-aarch64-b#{version.after_comma}.pkg"

  uninstall pkgutil: "com.jetbrains.jbrsdk"
end

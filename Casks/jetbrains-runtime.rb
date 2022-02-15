cask "jetbrains-runtime" do
  version "17.0.2,315.1"
  sha256 "d26deea2e1567d345e96f504b97b194dd015592a76d5260f9cc0589313699489"

  url "https://cache-redirector.jetbrains.com/intellij-jbr/jbrsdk_jcef-#{version.csv.first.dots_to_underscores}-osx-aarch64-b#{version.csv.second}.pkg"
  name "jetbrains-runtime"
  desc "Runtime environment based on OpenJDK for running JetBrains products"
  homepage "https://github.com/JetBrains/JetBrainsRuntime"

  pkg "jbrsdk_jcef-#{version.before_comma.dots_to_underscores}-osx-aarch64-b#{version.after_comma}.pkg"

  uninstall pkgutil: "com.jetbrains.jbrsdk"
end

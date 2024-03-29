class PykeHooks < Formula
  include Language::Python::Virtualenv

  desc "pyke_hooks"
  homepage ""
  url "https://files.pythonhosted.org/packages/5d/5d/f85b0c55021982ba81a4ba15662cf2e455f019bd5b177ec83fdf8c3065a3/pyke_hooks-0.1.2.tar.gz"
  sha256 "9506409eaef2c72c9cd599621c43b044e096caf4f5a914b37e787a8b50bebee8"

  depends_on "python3"

  resource "deep_merge" do
    url "https://files.pythonhosted.org/packages/a5/25/aa35c20acd8a4f515f9e4c8dee4c7731446234101a6dae0c34cf498bb342/deep_merge-0.0.4.tar.gz"
    sha256 "b54415f90934c42e334114e2864cb4d4e7335b34ad396e35ad8610c96065a47e"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
    sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end

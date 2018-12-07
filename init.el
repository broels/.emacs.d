(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/")
             '("marmalade" . "https://marmalade-repo.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
  (package-install 'org))

(eval-when-compile
  (require 'use-package))
(require 'bind-key)

(org-babel-load-file (expand-file-name "settings.org"))

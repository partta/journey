@@ -8,7 +8,7 @@ jobs:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        emacs_version: [26, 27, 28]
        emacs_version: [27, 28]
    steps:
      - name: Checkout
        uses: actions/checkout@v2
  2  
Makefile
@@ -44,5 +44,5 @@ clean: ## Remove build artifacts
	@rm -f emacs/radian.elc

.PHONY: docker
docker: ## Start a Docker shell; e.g. make docker VERSION=26
docker: ## Start a Docker shell; e.g. make docker VERSION=27
	@scripts/docker.bash "$(VERSION)" "$(CMD)"

.PHONY: clean clean-test clean-pyc clean-build docs help
.DEFAULT_GOAL := help
define BROWSER_PYSCRIPT
import os, webbrowser, sys
try:
	from urllib import pathname2url
except:
	from urllib.request import pathname2url

webbrowser.open("file://" + pathname2url(os.path.abspath(sys.argv[1])))
endef
export BROWSER_PYSCRIPT

define PRINT_HELP_PYSCRIPT
import re, sys

for line in sys.stdin:
	match = re.match(r'^([a-zA-Z_-]+):.*?## (.*)$$', line)
	if match:
		target, help = match.groups()
		print("%-20s %s" % (target, help))
endef
export PRINT_HELP_PYSCRIPT
BROWSER := python -c "$$BROWSER_PYSCRIPT"

help:
	@python -c "$$PRINT_HELP_PYSCRIPT" < $(MAKEFILE_LIST)

clean: clean-build


clean-build: ## remove build artifacts
	rm -fr result*/

test: ## run robotframework all tests
	robot -d result -L TRACE -b debug.log testcases/

test-api: ## run robotframework tests api
	robot -d result-api -L TRACE -b debug.log testcases/api/

test-web: ## run robotframework tests web
	robot -d result-web -L TRACE -b debug.log testcases/web/

test-mobile: ## run robotframework tests mobile
	robot -d result-mobile -L TRACE -b debug.log testcases/mobile/

test-ddt: ## run robotframework tests mobile
	robot -d result-ddt -L TRACE -b debug.log testcases/ddt/
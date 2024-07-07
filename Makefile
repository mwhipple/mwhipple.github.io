##
# <p>
# Production of this site consists of two major phases:
# processing of the content and packaging/deploying the artifact.
# Ths build configuration will be broken up accordingly all of which
# will be combined here.
# </p><p>
# The logic to process the content is defined in
# <a href="./process.mk">process.mk</a>.
# </p>
## <pre>

include process.mk

## </pre>
# <p>
# The logic to package and deploy the site is defined in
# <a href="./deploy.mk">deploy.mk</a>.
# </p>
## <pre>

include deploy.mk

## </pre>

# Generate enclosing sections https://pandoc.org/MANUAL.html#option--section-divs[
PANDOC_OPTS += --section-divs


PANDOC := pandoc
%.html: %.md
	$(PANDOC) --title-prefix="Matt Whipple" --standalone --from=markdown+link_attributes $(<) -o $(@)

MD_SRC := $(wildcard *.md)
deploy: $(MD_SRC:.md=.html)

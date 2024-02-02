##
# <p>
# At the moment processing of the content largely involves transforming
# source files so that they are presented as primitive HTML...
# a particularly basic form of
# <a href="https://en.wikipedia.org/wiki/Literate_programming"
#    title="Literate programming - Wikipedia"
#    data-date="2024-01-25">Literate Programming</a>
# "tangling"
# .
# </p><p>
# Source files themselves are currently written such that there is
# embedded documentation islands with HTML tags such that if the
# comment markers themselves are removed then the contents are valid,
# readable HTML. Such markers themselves will also be confined to
# the start of lines in the interest of simplicity and marginal efficiency.
# </p><p>
# The straightforward logic to provide such removal is provided by
# <a href="remove_comment_prefix.c">remove_comment_prefix</a>,
# which is defined and compiled here (relying on standard make rules).
# </p>
## <pre>

PROCESS := remove_comment_prefix
$(PROCESS): remove_comment_prefix.c

## </pre>
# <p>This magical transformation can then be applied to the source Makefiles
# in this project. The top level Makefile will be handled explicitly.</p>
## <pre>

Makefile.html: Makefile $(PROCESS)
	< $(<) ./$(PROCESS) > $(@)

## </pre>
# <p>
# The other Makefiles (like this one), can be handled by a pattern rule.
# </p><p>
# The produced HTML files will append .html suffix while preserving the
# original which simplifies both the rules and the Web server config.
# </p>
## <pre>

%.mk.html: %.mk $(PROCESS)
	< $(<) ./$(PROCESS) > $(@)

## </pre>
# <p>
# All the processed files should be defined so that they can be produced prior to
# deployment.
# </p>
## <pre>

OUTS := Makefile.html
OUTS += $(addsuffix,.html,$(wildcard *.mk))

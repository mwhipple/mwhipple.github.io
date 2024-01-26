##
# <p>
# At the moment processing of the content largely involves transforming
# source files so that they are presented as primitive HTML...
# about the most basic form of Literate Programming "tangling"
# imaginable.
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
## <pre>

PROCESS := remove_comment_prefix
$(PROCESS): remove_comment_prefix.c

## </pre>
# This magical transformation can then be applied to the source Makefiles
# in this project. The top level Makefile will be handled explicitly.
## <pre>

Makefile.html: Makefile $(PROCESS)
	< $(<) ./$(PROCESS) > $(@)

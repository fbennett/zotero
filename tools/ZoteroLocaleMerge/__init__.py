''' Zotero locale merge module
    Expected paths (in the Zotero extension source archive)::

        locale-rev/      # Subdirectory for user-supplied updates
                         # (only files present will be merged)

        locale-csv-out/  # CSV output directory (all locales are exported)

        locale-csv-in/   # CSV data for input
                         # (only files present will be merged)
        

    Simple usage::

        from ZoteroLocaleMerge import ZoteroLocaleMerge
        merger = ZoteroLocaleMerge()
        merger.merge()

    The merge method takes no options.
'''
from ZoteroLocaleMerge import ZoteroLocaleMerge

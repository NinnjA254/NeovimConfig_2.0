:Neotree action=show source=buffers position=right toggle=true

# watch out for:
need to switch dir when reveal nested file



You can call Neotree commands from your Lua scripts as follows:

```lua
require('neo-tree.command').execute({ ... })
```


R  = refresh:        Rescan the filesystem and redraw the tree. Changes made
                     within nvim should be detected automatically, but this is
                     useful for changes made elsewhere.



neo-tree-renderers -> By configuring, rearranging, adding, or removing |neo-tree-renderers| for each
node type. The renderer is a list of components, such as "icon" and "name",
which determines how each node displayed. Use them as lego pieces to build what
you want to see.

neo-tree-events
neo-tree-highlights
neo-tree-mappings



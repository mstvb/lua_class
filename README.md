# Class Function Example

### Import this Module and Use

+ `className` is required

+ `attributes` not required

```lua
local classes = require 'cls'

local Myclass = cls('className'):__new__(attributes)

```

| Function | Usage | Parameters |
| :-- | :-- | :--
| ```__new__``` | Create Instance of Class | ```attributes : table (string : any)``` |
| ```__name__``` | Returns Name of Class as String | --
| ```setProperty``` | Set Property of Class | ```key : string```, ```val : any``` |
| ```deleteProperty``` | Delete Property of Class | ```key : string``` |
| ```getProperty``` | Returns Property of Class| ```key : string``` |

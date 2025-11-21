# Class Function Example

### Import this Module and Use

#### Parameters

##### `className` : string is required

##### `attributes` : table (string | any) is required

#### Functions

- `cls(className : string)`

- `__new__(attributes : table (string | any))`

#### Example

```lua
local classes = require 'cls'

attributes = { name = 'cls', age = 20 }

local Myclass = cls('className'):__new__(attributes)

```

### Use Property Functions

#### Parameters

##### `key` : string is required

##### `val` : any is required

#### Functions

- `setProperty(key, val)`

- `getProperty(key)`

- `deleteProperty(key)`

#### Example

```lua
local classes = require 'cls'

local Myclass = cls('className'):__new__()

key = 'name'
val = 'cls'

-- Set Property of Class
Myclass:setProperty(key, val)

-- Returns Property of Class and Print in Console
print(Myclass:getProperty(key))
--- Output: 'cls'

-- Delete Property of Class
Myclass:deleteProperty(key)
```

### Use `__name__` Function

#### Example

```lua
local classes = require 'cls'

local Myclass = cls('className'):__new__()

-- Print Name of Class
print(Myclass:__name__())
--- Output: 'className'
```

### Functions List

| Function | Usage | Parameters |
| :-- | :-- | :--
| ```__new__``` | Create Instance of Class | ```attributes : table (string : any)``` |
| ```__name__``` | Returns Name of Class as String | --
| ```setProperty``` | Set Property of Class | ```key : string```, ```val : any``` |
| ```deleteProperty``` | Delete Property of Class | ```key : string``` |
| ```getProperty``` | Returns Property of Class| ```key : string``` |

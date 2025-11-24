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

### Use `__str__` Function

#### Example

```lua
local classes = require 'cls'

local myclass = cls('MyClass'):__new__()

local myclass:setProperty('isRunning', false)

-- Print Class as String
print(myclass:__str__('isRunning'))
--- Output: 'className : MyClass | isRunning: false |'
```

### Use `__call__` Function

#### Example

```lua
local classes = require 'cls'

local myclass = cls('MyClass'):__new__()

-- Create a Class Call 
myclass:__call__(function()
    print('I am a Function Call')
end)

--- Output: 'class: MyClass has called'
--- Output: 'I am a Function Call'

```

### Functions List

| Function | Usage | Parameters |
| :-- | :-- | :--
| ```__new__``` | Create Instance of Class | ```attributes : table (string : any)``` |
| ```__name__``` | Returns Name of Class as String | -- |
| ```__str__``` | Returns Class as String | ```keys : string``` |
| ```__call__``` | Print Message and Execute a Function | ```func : Function``` |
| ```setProperty``` | Set Property of Class | ```key : string```, ```val : any``` |
| ```deleteProperty``` | Delete Property of Class | ```key : string``` |
| ```getProperty``` | Returns Property of Class| ```key : string``` |

function cls(className)
	--- Function Class
	---
	--- Parameters
	--- @params className : string >> is required
	---
	--- Attributes
	--- @types class : table (string | any)
	--- @types cls : table (string | any)
	---
	--- Functions
	--- __new__(attributes : table (string | any)) >> Create new Instance of Class
	--- setProperty(key : string, val : any) >> Set a Property to Class
	--- deleteProperty(key : string) >> Delete a Property of Class
	--- getProperty(key : string) >> Returns a Property of CLass
	--- __name__() >> Returns the Name of Class
	--- 
	--- Returns 
	--- @returns class : table (string | any)

	-- Class Table
	local class = {}

	-- Class Attributes Table
	local cls = { __name = className, __index = class }

	function class:__new__(attributes)
		--- Create new Instance of Class
		---
		--- Parameters
		--- @params attributes : table (string : any) >> not required
		---
		--- Attributes
		--- @types class : table (string : any)
		--- @types cls : table (string : any)
		--- 
		--- Returns
		--- @returns self : table (string | any)

		-- Returns a Table with Custom Attributes and Class Attributes
		return setmetatable(attributes or {}, cls)
	end
	
	function class:setProperty(key, val)
		--- Set Property of Class
		---
		--- Parameters
		--- @params key : string >> is required
		--- @params val : any >> is required
		--- 
		--- Attributes
		--- @types class : table (string : any)
		
		-- Set Value with Key to Table
		class[key] = val
	end

	function class:deleteProperty(key)
		--- Delete Property of Class
		---
		--- Parameters
		--- @params key : string >> is required
		---
		--- Attributes
		--- @types class : table (string | any)

		-- Delete Value from Table
		class[key] = nil
	end 
	
	function class:getProperty(key)
		--- Returns Property of Class
		---
		--- Parameters
		--- @params key : string >> is required
		---
		--- Attributes
		--- @types class : table (string | any)
		---
		--- Returns
		--- @returns Property : any
		
		-- Returns Property
		return class[key]
	end
	
	function class:__name__()
		--- Returns Name of Class
		---
		--- Attributes
		--- @types cls : table (string | any)
		---
		--- Returns
		--- @returns className : string
		
		-- Returns Name of Class as String
		return cls['__name']
	end

	function class:__str__(...)
		--- Returns Class as String with Attributes
		--- 
		--- Parameters
		--- @params ... : string >> not required
		--- 
		--- Attributes
		--- @types class : table (string | any)
		--- @types cls : table (string | any)
		--- @types result : string
		--- 
		--- Returns
		--- @returns string

		-- Attributes Placeholder
		result = ''

		-- For Loop 
		for i = 1, select('#', ...) do
			result = result .. string.format(' %s : %s |', select(i, ...), class[select(i, ...)])
		end

		-- IF Parameters not Exists
		if result == '' then result = '---' end

		-- Returns Class as String with Attributes
		return string.format('className : %s | %s', cls['__name'], result)
	end

	function class:__call__(func)
		--- Call Function for Class
		--- 
		--- Parameters
		--- @params func : any >> not required
		--- 
		--- Attributes
		--- @types cls : table (string | any)

		-- IF is func a Function
		if type(func) == 'function' then
			print(string.format('class: %s has called', cls['__name']))
			func()

		-- IF func is not a Function
		else
			print(string.format('class: %s has called', cls['__name']))
		end
	end

	return class
end

return cls

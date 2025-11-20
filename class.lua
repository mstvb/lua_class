function cls(className)
	--- Function Class
	---
	--- Parameters
	--- @param className : string -- is required
	---
	--- Attributes
	--- @field class : table (string | any)
	--- @field cls : table (string | any)
	---
	--- Functions
	--- @field __new__(attributes : table (string | any)) >> Create new Instance of Class
	--- @field setProperty(key : string, val : any) >> Set a Property to Class
	--- @field deleteProperty(key : string) >> Delete a Property of Class
	--- @field getProperty(key : string) >> Returns a Property of CLass
	--- @field __name__() >> Returns the Name of Class
	---
	
	-- Assert when className not exists
	assert(className, 'className is required.')

	local class = {}
	local cls = { __name = className, __index = class }
	
	--- Create a New Instance of Class
	---
	--- Parameters
	--- @param attributes : table (string : any) -- not required
	---
	--- Attributes
	--- @field cls : table (string | any)
	---
	
	function class:__new__(attributes)
		--- Create new Instance of Class
		---
		--- Parameters
		--- @param attributes : table (string : any)
		---
		--- Attributes
		--- @field class : table (string : any)
		--- @field cls : table (string : any)
		---

		return setmetatable(attributes or {}, cls)
	end
	
	function class:setProperty(key, val)
		--- Set Property of Class
		---
		--- Parameters
		--- @param key : string -- required
		--- @param val : any -- required
		--- 
		--- Attributes
		--- @field class : table (string : any)
		---
		
		-- Assert when key not exists
		assert(key, 'key is required')
		
		-- Assert when val not exists
		assert(val, 'val is required')
		
		class[key] = val
	end

	function class:deleteProperty(key)
		--- Delete Property of Class
		---
		--- Parameters
		--- @param key : string -- required
		---
		--- Attributes
		--- @field class : table (string | any)
		---
		
		-- Assert when key not exists
		assert(key, 'key is required')

		class[key] = nil
	end 
	
	function class:getProperty(key)
		--- Returns Property of Class
		---
		--- Parameters
		--- @param key : string -- required
		---
		--- Attributes
		--- @field class : table (string | any)
		---
		
		-- Assert when key not exists
		assert(key, 'key is required')

		--- @return Property : any
		return class[key]
	end
	
	function class:__name__()
		--- Returns Name of Class
		---
		--- Attributes
		--- @field cls : table (string | any)
		---
		--- @return className : string
		return cls['__name']
	end
	
	--- @return class
	return class
end

return cls

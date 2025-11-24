-- Import the class module
local class = require('class')


--- Example Usage of the Class Module

-- Create attributes for the new class instance
local attributes = { isRunning = false }

-- Create a new class named 'test_class'
local test = cls('test_class'):__new__(attributes)

-- Set properties for the class
test:setProperty('position', { x = 0, y = 0})

-- Get Position property
print(test:getProperty('position'))

-- Delete the 'position' property
test:deleteProperty('position')


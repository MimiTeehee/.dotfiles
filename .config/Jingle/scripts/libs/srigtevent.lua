-- Java methods defined by the "srigtevent" library automatically converted to lua functions for scripting environment usage.

srigtevent = {}

--- Returns a table of all events in the latest log file, or an empty table if it could not be retrieved.
--- @return table
function srigtevent.getEventsTable() end

--- Returns true if the latest events log file has an event line that contains the given substring.
--- @param substring string
--- @return boolean
function srigtevent.hasEvent(substring) end

--- Returns true if the latest events log file exists and doesn't end in a world exit.
--- @return boolean
function srigtevent.isLatestWorldActive() end
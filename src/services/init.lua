local operations = require("src.services.todo_service")
local io_service = require("src.services.io_service")

local services = {
    operations = operations,
    io_service = io_service
}

return services

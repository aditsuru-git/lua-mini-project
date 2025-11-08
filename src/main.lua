-- Main entery point for the app
local services = require("src.services")

function Main()
    print("Welcome to Lua todo manager!")
    services.io_service.display_help()
    while true do
        local user_input = services.io_service.take_str_input()
        if user_input:find("^read") then
            services.operations:read_todo()
        elseif user_input:find("^delete") then
            services.operations:delete_todo()
        elseif user_input:find("^update") then
            services.operations:update_todo()
        elseif user_input == "help" then
            services.io_service.display_help()
        elseif user_input == "todos" then
            services.operations:list_todos()
        elseif user_input == "create" then
            services.operations:create_todo()
        elseif user_input == "exit" then
            break
        else
            print(" Invalid command")
        end
    end
end

Main()

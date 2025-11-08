-- Main entery point for the app
local io_services = require("src.services.io_service")
local op_services = require("src.services.operations")

function Main()
    print("Welcome to Lua todo manager!")
    io_services.display_help()
    while true do
        local user_input = io_services.take_str_input()
        if user_input:find("^read") then
            op_services.operations:read_todo(user_input)
        elseif user_input:find("^delete") then
            op_services.operations:delete_todo(user_input)
        elseif user_input:find("^update") then
            op_services.operations:update_todo(user_input)
        elseif user_input == "help" then
            io_services.display_help()
        elseif user_input == "todos" then
            op_services.operations:list_todos()
        elseif user_input:find("^create") then
            op_services.create_todo(user_input)
        elseif user_input == "exit" then
            break
        else
            print(" Invalid command")
        end
    end
end

Main()

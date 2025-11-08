local io_service = {}

function io_service.take_str_input()
    -- Take string input from user
    while true do
        local user_input = io.read()
        local trimmed = user_input:match("^%s*(.-)%s*$")
        if trimmed ~= "" then
            return trimmed
        end
    end
end

function io_service.display_help()
    -- Print help
    print(string.rep("-", 40))
    print(" help           → show command list")
    print(" todos          → list all todos")
    print(" create         → create a new todo")
    print(" read <name>    → read an existing todo")
    print(" update <name>  → update an existing todo")
    print(" delete <name>  → delete an existing todo")
    print(" exit           → exit the application")
    print(string.rep("-", 40))
end

return io_service

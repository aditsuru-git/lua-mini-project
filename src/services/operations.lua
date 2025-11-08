local todo_service = require("src.services.todo_service")

local operations = {}

function create_todo(user_input)
  if type(user_input) ~= "string" then return nil end

  --8 because the word create and space will take 5 characters
  local name = string.sub(user_input, 8)
  name = name and name:match("^%s*(.-)%s*$") or ""

  if name == "" then
    print("No name provided")
    end
  local op = todo_service:create_todo(name)
  if op then
    print("Created todo")
  else
    print("Todo not found")
    end
end

local function trim(s)
    return s and s:match("^%s*(.-)%s*$") or ""
end

local M = {}
M.operations=operations
M.create_todo = create_todo
return M
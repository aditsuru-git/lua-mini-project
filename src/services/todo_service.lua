local operations = {
    todos = {}
}

function operations:_create_todo(name)
    -- Check if todo already exists
    if self.todos[name] then
        return false
    end

    -- The todo object added to the main table operations
    self.todos[name] = {
        done = false
    }
    return true
end

function operations:read_todo(name)
    -- Read todo value (done) only if it exists
    name = string.sub(name, 5)
    name = name and name:match("^%s*(.-)%s*$") or ""

    if self.todos[name] then
        print(string.format("%-20s [%s]", name, self.todos[name].done and "done" or "pending"))
    end
    return nil
end

function operations:_update_todo(name)
    -- Toggle todo
    if self.todos[name] then
        self.todos[name].done = not self.todos[name].done
        return true
    end
    return nil
end

function operations:_delete_todo(name)
    -- Delete todo only if it exists otherwise just return false indicating operation unsuccessful
    if self.todos[name] then
        self.todos[name] = nil
        return true
    end
    return false
end

function operations:list_todos()
    -- List all todos
    for name, todo in pairs(self.todos) do
        print(string.format("%-20s [%s]", name, todo.done and "done" or "pending"))
    end
end

return operations

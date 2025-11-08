local operations = {
    todos = {}
}

function operations:create_todo(name)
    --this is one todo object which has two fields name (key) and done (value)
    local todo = {
        name = name,
        done = false
    }
    --the todo object added to the main table operations
    self.todos[name] = todo
    return todo
end

function operations:read_todo(name)
    -- Read todo value (done) only if it exists
    if self.todos[name] then
        return self.todos[name]
    end
    return nil
    
end

function operations:update_todo()
    -- Update todo
end

function operations:delete_todo(name)
    -- Delete todo only if it exists otherwise just return false indicating operation unsuccessful
    if self.todos[name] then
        self.todos[name] = nil
        return true
    end
    return false
end

function operations:list_todos()
    -- List all todos
end

return operations

function git_prompt_filter()   
    -- No git present or not in git file
    clink.prompt.value = string.gsub(clink.prompt.value, "{git}", "")
    return false
end

clink.prompt.register_filter(git_prompt_filter, 50)
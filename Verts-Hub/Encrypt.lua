local Key, Key2 = '8v98kAovCfXEVk2l', 'MtRPq3AJudDyRNNG'
function encrypt(Input)
    local str
    if syn.crypt then
        str = syn.crypt.custom.encrypt('aes-gcm', Input, Key, Key2)
    end
    return str
end
function decrypt(Input)
    local str
    if syn.crypt then
        str = syn.crypt.custom.decrypt('aes-gcm', Input, Key, Key2)
    end
    return str
end

local rand = Random.new()
local arabic = {'Ø´','Ø´','Ø¤','ÙŠ','Ø«','Ø¨','Ù„','Ø§','Ù‡','Øª','Ù†','Ù…','Ø©','Ù‰','Ø®','Ø­','Ø¶','Ù‚','Ø³','Ù','Øº','Ø¹','Ø¹','Øµ','Ø¡','Øº','Ø¦'}

function getRandomLetter()
    return arabic[rand:NextInteger(1,#arabic)]
end

function str(length, includeCapitals)
    local length = length or 10
    local str = ''
    for i=1,length do
        local randomLetter = getRandomLetter()
        if includeCapitals and rand:NextNumber() > .5 then
            randomLetter = string.upper(randomLetter)
        end
        str = str .. randomLetter
    end
    return str
end

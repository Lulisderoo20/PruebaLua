--install  Lua in your system, then execute <lua lulisdero20.lua> in your command line

local function calculateArithmeticSum(str)
    local lines = {}
    for s in str:gmatch("[^\r\n]+") do
        table.insert(lines, s)
    end

    local numCases = tonumber(lines[1])
    local results = {}
    for i = 2, numCases + 1 do
        local values = {}
        for s in lines[i]:gmatch("%d+") do
            table.insert(values, tonumber(s))
        end

        local A = values[1]
        local B = values[2]
        local N = values[3]

        local sum = (N / 2) * (2 * A + (N - 1) * B)
        table.insert(results, sum)
    end

    print(table.concat(results, " "))
end

local function input()
    local file = io.open("DATA.lst", "r") 
    if file then
        local content = file:read("*all")
        file:close()
        return content
    end
    return nil
end

calculateArithmeticSum(input())
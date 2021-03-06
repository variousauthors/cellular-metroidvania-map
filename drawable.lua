
return (function ()
    local component = "Drawable"

    local getNeeds = function (needs, entity)
        local result = {}

        for i, k in ipairs(needs) do
            table.insert(result, entity[k])
        end

        return result
    end

    local draw_drawable = function (drawable, entity)
        local args = getNeeds(drawable.needs, entity)

        drawable:draw(unpack(args))
    end

    local draw = function (drawable, entity)
        for index, entity in pairs(Entities) do
            properties = entity[component]

            if properties then
                draw_drawable(properties, entity)
            end
        end
    end

    return {
        draw = draw
    }
end)()

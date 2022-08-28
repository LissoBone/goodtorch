
function goodtorch.detect_gamemode()
    if minetest.registered_nodes["default:dirt"] then
        return "MTG" -- Minetest Game
    elseif minetest.registered_nodes["mcl_core:dirt"] then
        return "MCL" -- Some version of MineClone (2, 5, Mineclonia, don't know, or care)
    else
        return "???" -- Unknown game (we don't want to see this, this is bad, could be on a different game we are not supporting/yet)
    end
end

-- For now I'll just predefine the nodeset (for both games)
function goodtorch.default_nodeset()
    goodtorch.nodes.water.source = "default:water_source"
    goodtorch.nodes.water.flowing = "default:water_flowing" -- param2
    goodtorch.nodes.river.source = "default:river_water_source"
    goodtorch.nodes.river.flowing = "default:river_water_flowing" -- param2
end

function goodtorch.mcl_nodeset()
    goodtorch.nodes.water.source = "mcl_core:water_source"
    goodtorch.nodes.water.flowing = "mcl_core:water_flowing" -- param2
    -- Un-needed as in MineClone there is no river water (only regular water)
    goodtorch.nodes.river.source = ""
    goodtorch.nodes.river.flowing = "" -- param2
end

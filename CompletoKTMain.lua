-- TESTING
function InitCommands()
    SLASH_TESTCMD1 = "/ckt"
    SlashCmdList["TESTCMD"] = function(option)
        if (option == nil) then
            -- Show a frame or something to test
            message("TEST")
        elseif (option == "show") then
            -- Some other testing functionality
        end
    end
end

function OnAddonLoaded()
    InitCommands()
end

function OnEvent(self, event, arg)
    if (event == "ADDON_LOADED") then
        eventFrame:UnregisterEvent("ADDON_LOADED")
        OnAddonLoaded()
    end
end

eventFrame = CreateFrame("Frame", "Completo Key Tracker", UIParent)
eventFrame:SetScript("OnEvent", OnEvent)
eventFrame:RegisterEvent("ADDON_LOADED")
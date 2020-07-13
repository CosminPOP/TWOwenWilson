local ow = CreateFrame('Frame')

ow:RegisterEvent("CHAT_MSG_COMBAT_SELF_HITS")
ow:RegisterEvent("CHAT_MSG_SPELL_SELF_DAMAGE")

ow:SetScript("OnEvent", function()
    if (event) then
        if event == 'CHAT_MSG_COMBAT_SELF_HITS'  then
            if string.find(arg1, "You crit", 1, true) then
                PlaySoundFile("Interface\\AddOns\\TWOwenWilson\\Sounds\\" .. math.random(1, 16) .. ".mp3");
            end
        end
        if event == 'CHAT_MSG_SPELL_SELF_DAMAGE' then
            if string.find(arg1, "Your ", 1, true) and string.find(arg1, " crits ", 1, true) then
                PlaySoundFile("Interface\\AddOns\\TWOwenWilson\\Sounds\\" .. math.random(1, 16) .. ".mp3");
            end
        end
    end
end)



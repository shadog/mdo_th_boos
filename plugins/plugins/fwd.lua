--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY Th3_BOOS                   ▀▄ ▄▀ 
▀▄ ▄▀     BY Th3_BOOS (@Th3_BOOS)    ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY Th3_BOOS          ▀▄ ▄▀   
▀▄ ▄▀     lock fwd  : منع اعاده توجيه      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do 

local function run(msg, matches)
    chat_id =  msg.to.id
    
    if is_momod(msg) and matches[1] == 'قفل اعاده توجيه' then
      
            
                    local hash = 'mate:'..msg.to.id
                    redis:set(hash, true)
                    return "#انتباه⁉️\n\nتم قفل🔒 اعاده التوجيه♻️ {✔️}\n\n#fwd_has_been_muted😐"
  elseif is_momod(msg) and matches[1] == 'فتح اعاده توجيه' then
      local hash = 'mate:'..msg.to.id
      redis:del(hash)
        return "#انتباه⁉️\n\nتم فتح 🔓اعاده التوجيه🌀{❌}\n\n#fwd_has_been_unmuted😬"
end

end

return {
    patterns = {
        '^(قفل اعاده توجيه)$',
        '^(فتح اعاده توجيه)$',
    },
    run = run,
    pre_process = pre_process
}
end

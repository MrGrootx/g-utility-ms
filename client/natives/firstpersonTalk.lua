if Config.settings.ForceFirstPersonTalk then
   local check = false

   CreateThread(function()
      while true do
         SetBlackout(false)
         Wait(1)
         if IsControlPressed(0, 306) then
            if GetFollowPedCamViewMode() == 4 and check == false then
               check = false
            else
               SetFollowPedCamViewMode(4)
               check = true
            end
         else
            if check == true then
               SetFollowPedCamViewMode(1)
               check = false
            end
         end
      end
   end)
end

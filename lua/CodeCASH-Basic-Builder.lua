chance = 49.5
multiplier = 16
basebet = 0.000002
bethigh = true
nextbet = basebet
maxbet=balance/3000
stopprofit=0.004
badstreak=currentstreak

function dobet() 
  maxbet=balance/8
  if profit>=stopprofit then
    stop()
  end
    
    if win then
        nextbet = basebet
    elseif not win then
        nextbet = ((previousbet/balance)*(multiplier))/1650
    
      if math.abs(badstreak)>=7 then
        nextbet=0.00000016
        badstreak=0
     else
       badstreak=currentstreak;
     end
    
    if nextbet>=balance/40 then
      nextbet=maxbet
    end
    
    end

end

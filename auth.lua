-- Allowed IP's For Servers
local allowedIPs = {
    "26.136.79.220", 
	"185.221.64.240",  
	"185.221.64.241", 
	"93.113.57.23",  
	"212.64.215.214", 
	"212.64.215.116",
	"212.64.199.9" 
}

function script.update(dt)

    local serverIP = ac.getServerIP()
    
  
    local isAllowed = false
    for _, ip in ipairs(allowedIPs) do
        if serverIP == ip then
            isAllowed = true
            break
        end
    end
    

    ac.broadcastSharedEvent("ngg_auth_status", isAllowed)
end





bssid1 <- "c0c1c05b1637";
bssid2 <- "c0c1c05b1635"
bssid1_loc <- {"lat":40.1234, "lon":-76.1234};
bssid2_loc <- {"lat":40.5678, "lon":-76.5678};

function checkLocation() {
    local current_bssid = imp.getbssid();
    server.log("BSSID: " + imp.getbssid());
    if (current_bssid == bssid1) {
        agent.send("bssid", bssid1_loc);
    } 
    else if (current_bssid == bssid2){
        agent.send("bssid", bssid2_loc)
    }
    else {
        //Do something else
    }
}

checkLocation();

package com.fuse.ane.AirFuseAPI;

import com.adobe.fre.*;
import java.util.*;
import com.fuse.ane.AirFuseAPI.functions.*;

public class AirFuseAPIExtensionContext extends FREContext
{
    @Override
    public void dispose() {
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        final HashMap<String, RegisterEventFunction> hashMap = (HashMap<String, RegisterEventFunction>)new HashMap<String, LogFunction>();
        hashMap.put("startSession", (LogFunction)new StartSessionFunction());
        hashMap.put("registerEvent", (LogFunction)new RegisterEventFunction());
        hashMap.put("checkAdAvailable", (LogFunction)new CheckAdAvailableFunction());
        hashMap.put("displayNotifications", (LogFunction)new DisplayNotificationsFunction());
        hashMap.put("showAd", (LogFunction)new ShowAdFunction());
        hashMap.put("getGameConfigurationValue", (LogFunction)new GetGameConfigurationValueFunction());
        hashMap.put("registerLevel", (LogFunction)new RegisterLevelFunction());
        hashMap.put("registerCurrency", (LogFunction)new RegisterCurrencyFunction());
        hashMap.put("registerGender", (LogFunction)new RegisterGenderFunction());
        hashMap.put("gamesPlayed", (LogFunction)new GamesPlayedFunction());
        hashMap.put("suspendSession", (LogFunction)new SuspendSessionFunction());
        hashMap.put("resumeSession", (LogFunction)new ResumeSessionFunction());
        hashMap.put("displayMoreGames", (LogFunction)new MoreGamesFunction());
        hashMap.put("log", new LogFunction());
        return (Map<String, FREFunction>)hashMap;
    }
}

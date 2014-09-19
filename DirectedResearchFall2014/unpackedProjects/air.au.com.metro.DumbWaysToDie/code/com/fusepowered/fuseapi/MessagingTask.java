package com.fusepowered.fuseapi;

import java.util.*;
import org.json.*;
import android.util.*;
import com.fusepowered.util.*;

public class MessagingTask implements Runnable
{
    private static final String TAG = "MessagingTask";
    private ActionType actionType;
    public FuseCallback fuseCallback;
    private ArrayList<JSONObject> jsonObjects;
    NetworkService networkService;
    private Response response;
    
    public MessagingTask(final ArrayList<JSONObject> c, final FuseCallback fuseCallback, final ActionType actionType) {
        super();
        this.actionType = null;
        this.networkService = new NetworkService();
        (this.jsonObjects = new ArrayList<JSONObject>()).addAll(c);
        this.actionType = actionType;
        this.fuseCallback = fuseCallback;
    }
    
    public static String generateURL(final String str, final HashMap<String, String> hashMap, final HashMap<String, String> hashMap2) {
        final Iterator<Map.Entry<String, String>> iterator = hashMap.entrySet().iterator();
        QueryString queryString = null;
        while (iterator.hasNext()) {
            final Map.Entry<String, String> entry = iterator.next();
            if (queryString == null) {
                queryString = new QueryString(entry.getKey(), entry.getValue());
            }
            else {
                queryString.add(entry.getKey(), entry.getValue());
            }
        }
        for (final Map.Entry<String, String> entry2 : hashMap2.entrySet()) {
            if (queryString == null) {
                queryString = new QueryString(entry2.getKey(), entry2.getValue());
            }
            else {
                queryString.add(entry2.getKey(), entry2.getValue());
            }
        }
        return str + queryString.getQuery();
    }
    
    private void processError(final FuseGameDataError fuseGameDataError, final FuseLoginError fuseLoginError) {
        if (this.fuseCallback instanceof FuseGameDataCallback) {
            ((FuseGameDataCallback)this.fuseCallback).setFuseGameDataError(fuseGameDataError);
        }
        if (this.fuseCallback != null && this.fuseCallback instanceof FuseAdCallback) {
            this.fuseCallback.sessionLoginError(fuseLoginError);
            ((FuseAdCallback)this.fuseCallback).adWillClose();
        }
        if (this.actionType != null && this.actionType.equals(ActionType.ACTION_SESSION_START)) {
            this.fuseCallback.sessionLoginError(fuseLoginError);
        }
        this.fuseCallback.callback();
    }
    
    @Override
    public void run() {
        this.sendJsonMessage();
    }
    
    public void sendJsonMessage() {
    Label_0249_Outer:
        while (true) {
            this.response = new Response();
            Label_0369: {
                while (true) {
                Label_0386:
                    while (true) {
                        Label_0380: {
                            while (true) {
                            Label_0359:
                                while (true) {
                                    ActionType actionTypeByCode = null;
                                Label_0138:
                                    while (true) {
                                        Label_0315: {
                                            try {
                                                this.response.setXml(this.networkService.sendRequest(this.jsonObjects.toString(), this.actionType));
                                                if (this.response.isEmpty()) {
                                                    break Label_0369;
                                                }
                                                while (this.jsonObjects != null && this.jsonObjects.size() != 0) {
                                                    final JSONObject jsonObject = this.jsonObjects.get(0);
                                                    try {
                                                        if (jsonObject.has("action")) {
                                                            actionTypeByCode = ActionType.getActionTypeByCode(Integer.parseInt(jsonObject.getString("action")));
                                                            if (actionTypeByCode != ActionType.ACTION_GET_GAME_DATA) {
                                                                final ActionType action_SET_GAME_DATA = ActionType.ACTION_SET_GAME_DATA;
                                                                final String string = null;
                                                                if (actionTypeByCode != action_SET_GAME_DATA) {
                                                                    break Label_0138;
                                                                }
                                                            }
                                                            if (!jsonObject.has("reqID")) {
                                                                break Label_0315;
                                                            }
                                                            final String string = jsonObject.getString("reqID");
                                                            if (this.fuseCallback != null) {
                                                                final boolean response = this.fuseCallback.parseResponse(this.response, actionTypeByCode, string);
                                                                if (actionTypeByCode != ActionType.ACTION_SET_GAME_DATA || this.jsonObjects.size() != 1 || !response) {
                                                                    break Label_0138;
                                                                }
                                                                if (string == null) {
                                                                    break Label_0380;
                                                                }
                                                                final int int1 = Integer.parseInt(string);
                                                                ((FuseGameDataCallback)this.fuseCallback).gameDataSetAcknowledged(int1);
                                                                if (!this.fuseCallback.isClientRequestAd) {
                                                                    break Label_0359;
                                                                }
                                                                this.fuseCallback.isClientRequestAd = false;
                                                                final FuseCallback fuseCallback = this.fuseCallback;
                                                                if (!FuseAPI.responseValues.peekAd().hasHtmlBody()) {
                                                                    break Label_0386;
                                                                }
                                                                final int n = 1;
                                                                fuseCallback.adAvailabilityResponse(n, 0);
                                                            }
                                                        }
                                                        this.jsonObjects.remove(0);
                                                    }
                                                    catch (JSONException ex2) {
                                                        this.processError(FuseGameDataError.FUSE_GD_ERROR_XML_PARSE_ERROR, FuseLoginError.FUSE_ERROR_XML_PARSE_ERROR);
                                                    }
                                                }
                                            }
                                            catch (Exception ex) {
                                                Log.e("FuseAPI", "sendJsonMessage NetworkException", (Throwable)ex);
                                                this.processError(FuseGameDataError.FUSE_GD_ERROR_NOT_CONNECTED, FuseLoginError.FUSE_ACCOUNT_NOT_CONNECTED);
                                                this.response.setXml("");
                                            }
                                            return;
                                        }
                                        Log.e("MessagingTask", "Missing game data request id");
                                        final String string = null;
                                        continue Label_0138;
                                    }
                                    if (actionTypeByCode == ActionType.ACTION_GET_GAME_DATA && this.jsonObjects.size() == 1) {
                                        FuseAPI.responseValues.setGameKeyValuePairs(null);
                                        continue Label_0249_Outer;
                                    }
                                    continue Label_0249_Outer;
                                }
                                this.fuseCallback.callback();
                                continue;
                            }
                        }
                        final int int1 = 0;
                        continue Label_0249_Outer;
                    }
                    final int n = 0;
                    continue;
                }
            }
            this.processError(FuseGameDataError.FUSE_GD_ERROR_REQUEST_FAILED, FuseLoginError.FUSE_ACCOUNT_REQUEST_FAILED);
        }
    }
}

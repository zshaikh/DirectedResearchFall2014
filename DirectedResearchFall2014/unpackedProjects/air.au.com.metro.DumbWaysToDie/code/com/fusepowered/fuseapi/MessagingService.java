package com.fusepowered.fuseapi;

import java.util.concurrent.*;
import org.json.*;
import android.util.*;
import com.fusepowered.util.*;
import java.util.*;

public class MessagingService
{
    private static final String TAG = "MessagingService";
    private static ArrayList<JSONObject> gameJsonObjects;
    private static ArrayList<JSONObject> jsonObjects;
    private static Object lock;
    private static boolean sessionInitiated;
    static ExecutorService threadExecutor;
    
    static {
        MessagingService.threadExecutor = Executors.newCachedThreadPool();
        MessagingService.lock = new Object();
    }
    
    private static void addRequestToJsonList(final HashMap<String, String> hashMap) {
        synchronized (MessagingService.lock) {
            if (MessagingService.jsonObjects == null || MessagingService.jsonObjects.size() == 0) {
                MessagingService.jsonObjects = new ArrayList<JSONObject>();
            }
            if (MessagingService.jsonObjects.size() == 0) {
                MessagingService.jsonObjects.add(mapToJson(hashMap));
            }
            if (MessagingService.gameJsonObjects == null || MessagingService.gameJsonObjects.size() == 0) {
                MessagingService.gameJsonObjects = new ArrayList<JSONObject>();
            }
            if (MessagingService.gameJsonObjects.size() == 0) {
                MessagingService.gameJsonObjects.add(mapToJson(hashMap));
            }
        }
    }
    
    private static void addRequestToJsonList(final HashMap<String, String> hashMap, final HashMap<String, String> hashMap2) {
        addRequestToJsonList(hashMap);
        final boolean data = isData(hashMap2);
        final Object lock = MessagingService.lock;
        // monitorenter(lock)
        Label_0033: {
            if (data) {
                break Label_0033;
            }
            try {
                MessagingService.jsonObjects.add(mapToJson(hashMap2));
                return;
                MessagingService.gameJsonObjects.add(mapToJson(hashMap2));
            }
            finally {
            }
            // monitorexit(lock)
        }
    }
    
    private static void flush(final ActionType actionType, final FuseCallback fuseCallback) {
        while (true) {
            final Object lock = MessagingService.lock;
            // monitorenter(lock)
        Label_0189_Outer:
            while (true) {
            Label_0202:
                while (true) {
                    Label_0196: {
                        while (true) {
                            try {
                                if (MessagingService.gameJsonObjects != null && MessagingService.gameJsonObjects.size() > 1) {
                                    final MessagingTask messagingTask = new MessagingTask(MessagingService.gameJsonObjects, fuseCallback, actionType);
                                    // monitorexit(lock)
                                    Label_0159: {
                                        try {
                                            MessagingService.gameJsonObjects.clear();
                                            MessagingService.threadExecutor.execute(messagingTask);
                                            if (MessagingService.jsonObjects != null && MessagingService.jsonObjects.size() > 1) {
                                                final ListIterator<JSONObject> listIterator = MessagingService.jsonObjects.listIterator();
                                                JSONObject jsonObject = listIterator.next();
                                                while (listIterator.hasNext()) {
                                                    try {
                                                        if (jsonObject.has("session_id")) {
                                                            jsonObject.put("session_id", (Object)FuseAPI.responseValues.getSessionId());
                                                        }
                                                        jsonObject = listIterator.next();
                                                    }
                                                    catch (JSONException ex) {
                                                        ex.printStackTrace();
                                                    }
                                                }
                                                break Label_0159;
                                            }
                                            break Label_0196;
                                        }
                                        finally {}
                                        throw;
                                    }
                                    final MessagingTask messagingTask2 = new MessagingTask(MessagingService.jsonObjects, fuseCallback, actionType);
                                    MessagingService.jsonObjects.clear();
                                    MessagingService.threadExecutor.execute(messagingTask2);
                                    // monitorexit(lock)
                                    return;
                                }
                                break Label_0202;
                            }
                            finally {
                                continue Label_0189_Outer;
                            }
                            break;
                        }
                    }
                    continue;
                }
                final MessagingTask messagingTask = null;
                continue Label_0189_Outer;
            }
        }
    }
    
    private static ActionType getRequestActionType(final HashMap<String, String> hashMap) {
        final boolean containsKey = hashMap.containsKey("action");
        ActionType actionTypeByCode = null;
        if (containsKey) {
            actionTypeByCode = ActionType.getActionTypeByCode(Integer.parseInt(hashMap.get("action")));
        }
        return actionTypeByCode;
    }
    
    private static ActionType getRequestActionType(final JSONObject jsonObject) {
        final boolean has = jsonObject.has("action");
        ActionType actionTypeByCode = null;
        if (!has) {
            return actionTypeByCode;
        }
        try {
            actionTypeByCode = ActionType.getActionTypeByCode(Integer.parseInt((String)jsonObject.get("action")));
            return actionTypeByCode;
        }
        catch (JSONException ex) {
            Log.e("MessagingService", "Unexpected exception", (Throwable)ex);
            return null;
        }
    }
    
    private static boolean isData(final HashMap<String, String> hashMap) {
        return ActionType.isDataAction(getRequestActionType(hashMap));
    }
    
    private static boolean isSessionInitiated(final HashMap<String, String> hashMap) {
        if (hashMap.containsKey("session_id") && !StringUtil.isEmpty(hashMap.get("session_id"))) {
            MessagingService.sessionInitiated = true;
        }
        return MessagingService.sessionInitiated;
    }
    
    private static boolean isTimeToFlush(final ActionType actionType, final boolean b) {
        switch (actionType) {
            default: {
                if (!b) {
                    return MessagingService.sessionInitiated = false;
                }
                if (!MessagingService.sessionInitiated) {
                    return MessagingService.sessionInitiated = true;
                }
                if (ActionType.isDataAction(actionType) || MessagingService.jsonObjects.size() >= 1) {
                    return true;
                }
                switch (actionType) {
                    default: {
                        return false;
                    }
                    case ACTION_FETCH_SERVER_UTC_TIME:
                    case ACTION_GAME_CRASH:
                    case ACTION_GET_AD:
                    case ACTION_INCENTIVE_ACTION_COMPLETE:
                    case ACTION_MIGRATE_FRIENDS:
                    case ACTION_REWARD_REDEMPTION:
                    case ACTION_USER_OPT_OUT:
                    case ACTION_FETCH_DLC_LIST:
                    case ACTION_REGISTER_FRIENDS_LIST:
                    case ACTION_GET_FRIENDS_LIST: {
                        return true;
                    }
                }
                break;
            }
            case ACTION_SESSION_START:
            case ACTION_SESSION_END:
            case ACTION_RESUME_SESSION:
            case ACTION_SUSPEND_SESSION: {
                return true;
            }
        }
    }
    
    public static JSONObject mapToJson(final HashMap<String, ?> hashMap) {
        JSONObject jsonObject;
        while (true) {
            jsonObject = new JSONObject();
            while (true) {
                Label_0085: {
                    try {
                        for (final String key : hashMap.keySet()) {
                            final Object value = hashMap.get(key);
                            if (value == null) {
                                break Label_0085;
                            }
                            final String string = value.toString();
                            jsonObject.put(key, (Object)string);
                        }
                    }
                    catch (JSONException ex) {
                        Log.e("FuseAPI", "mapToJson JSONException", (Throwable)ex);
                    }
                    break;
                }
                final String string = "";
                continue;
            }
        }
        return jsonObject;
    }
    
    public static void sendJsonMessage(final HashMap<String, String> hashMap, final HashMap<String, String> hashMap2, final FuseCallback fuseCallback) {
        sendJsonMessage(hashMap, hashMap2, fuseCallback, true);
    }
    
    public static void sendJsonMessage(final HashMap<String, String> hashMap, final HashMap<String, String> hashMap2, final FuseCallback fuseCallback, final boolean b) {
        addRequestToJsonList(hashMap, hashMap2);
        if (b) {
            final ActionType requestActionType = getRequestActionType(hashMap2);
            if (isTimeToFlush(requestActionType, isSessionInitiated(hashMap))) {
                synchronized (MessagingService.lock) {
                    flush(requestActionType, fuseCallback);
                }
            }
        }
    }
    
    public static void sendJsonMessage(final HashMap<String, String> hashMap, final JSONObject e, final FuseCallback fuseCallback, final boolean b) {
        addRequestToJsonList(hashMap);
        MessagingService.gameJsonObjects.add(e);
        if (b) {
            final ActionType requestActionType = getRequestActionType(e);
            if (isTimeToFlush(requestActionType, isSessionInitiated(hashMap))) {
                synchronized (MessagingService.lock) {
                    flush(requestActionType, fuseCallback);
                }
            }
        }
    }
    
    public static void sendSyncJsonMessage(final HashMap<String, String> p0, final HashMap<String, String> p1, final FuseCallback p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             Lcom/fusepowered/fuseapi/MessagingService;.class
        //     2: monitorenter   
        //     3: aload_0        
        //     4: aload_1        
        //     5: invokestatic    com/fusepowered/fuseapi/MessagingService.addRequestToJsonList:(Ljava/util/HashMap;Ljava/util/HashMap;)V
        //     8: getstatic       com/fusepowered/fuseapi/MessagingService.lock:Ljava/lang/Object;
        //    11: astore          4
        //    13: aload           4
        //    15: monitorenter   
        //    16: new             Lcom/fusepowered/fuseapi/MessagingTask;
        //    19: dup            
        //    20: getstatic       com/fusepowered/fuseapi/MessagingService.jsonObjects:Ljava/util/ArrayList;
        //    23: aload_2        
        //    24: aload_1        
        //    25: invokestatic    com/fusepowered/fuseapi/MessagingService.getRequestActionType:(Ljava/util/HashMap;)Lcom/fusepowered/util/ActionType;
        //    28: invokespecial   com/fusepowered/fuseapi/MessagingTask.<init>:(Ljava/util/ArrayList;Lcom/fusepowered/util/FuseCallback;Lcom/fusepowered/util/ActionType;)V
        //    31: astore          5
        //    33: getstatic       com/fusepowered/fuseapi/MessagingService.jsonObjects:Ljava/util/ArrayList;
        //    36: invokevirtual   java/util/ArrayList.clear:()V
        //    39: aload           4
        //    41: monitorexit    
        //    42: aload           5
        //    44: invokevirtual   com/fusepowered/fuseapi/MessagingTask.sendJsonMessage:()V
        //    47: ldc             Lcom/fusepowered/fuseapi/MessagingService;.class
        //    49: monitorexit    
        //    50: return         
        //    51: astore          6
        //    53: aload           4
        //    55: monitorexit    
        //    56: aload           6
        //    58: athrow         
        //    59: astore_3       
        //    60: ldc             Lcom/fusepowered/fuseapi/MessagingService;.class
        //    62: monitorexit    
        //    63: aload_3        
        //    64: athrow         
        //    65: astore          6
        //    67: goto            53
        //    Signature:
        //  (Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;Lcom/fusepowered/util/FuseCallback;)V
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  3      16     59     65     Any
        //  16     33     51     53     Any
        //  33     42     65     70     Any
        //  42     47     59     65     Any
        //  53     56     51     53     Any
        //  56     59     59     65     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0053:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
}

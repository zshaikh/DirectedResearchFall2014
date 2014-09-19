package com.fusepowered.a1.webapp;

import android.webkit.*;

public class ApplifierImpactWebBridge
{
    private IApplifierImpactWebBrigeListener _listener;
    
    public ApplifierImpactWebBridge(final IApplifierImpactWebBrigeListener listener) {
        super();
        this._listener = null;
        this._listener = listener;
    }
    
    private ApplifierImpactWebEvent getEventType(final String anObject) {
        for (final ApplifierImpactWebEvent applifierImpactWebEvent : ApplifierImpactWebEvent.values()) {
            if (applifierImpactWebEvent.toString().equals(anObject)) {
                return applifierImpactWebEvent;
            }
        }
        return null;
    }
    
    @JavascriptInterface
    public boolean handleWebEvent(final String p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/lang/StringBuilder;
        //     3: dup            
        //     4: ldc             "handleWebEvent: "
        //     6: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //     9: aload_1        
        //    10: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    13: ldc             ", "
        //    15: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    18: aload_2        
        //    19: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    22: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    25: aload_0        
        //    26: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
        //    29: aload_0        
        //    30: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebBridge._listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebBrigeListener;
        //    33: ifnull          40
        //    36: aload_2        
        //    37: ifnonnull       42
        //    40: iconst_0       
        //    41: ireturn        
        //    42: aconst_null    
        //    43: astore_3       
        //    44: new             Lorg/json/JSONObject;
        //    47: dup            
        //    48: aload_2        
        //    49: invokespecial   org/json/JSONObject.<init>:(Ljava/lang/String;)V
        //    52: astore          4
        //    54: aload           4
        //    56: ldc             "data"
        //    58: invokevirtual   org/json/JSONObject.getJSONObject:(Ljava/lang/String;)Lorg/json/JSONObject;
        //    61: astore          14
        //    63: aload           14
        //    65: astore          7
        //    67: aload           4
        //    69: astore_3       
        //    70: aload_3        
        //    71: ifnull          78
        //    74: aload_1        
        //    75: ifnonnull       116
        //    78: iconst_0       
        //    79: ireturn        
        //    80: astore          15
        //    82: aload           15
        //    84: astore          6
        //    86: new             Ljava/lang/StringBuilder;
        //    89: dup            
        //    90: ldc             "Error while parsing parameters: "
        //    92: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    95: aload           6
        //    97: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   100: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   103: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   106: aload_0        
        //   107: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
        //   110: aconst_null    
        //   111: astore          7
        //   113: goto            70
        //   116: aload_0        
        //   117: aload_1        
        //   118: invokespecial   com/fusepowered/a1/webapp/ApplifierImpactWebBridge.getEventType:(Ljava/lang/String;)Lcom/fusepowered/a1/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;
        //   121: astore          8
        //   123: aload           8
        //   125: ifnonnull       130
        //   128: iconst_0       
        //   129: ireturn        
        //   130: invokestatic    com/fusepowered/a1/webapp/ApplifierImpactWebBridge.$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent:()[I
        //   133: aload           8
        //   135: invokevirtual   com/fusepowered/a1/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent.ordinal:()I
        //   138: iaload         
        //   139: tableswitch {
        //                2: 178
        //                3: 192
        //                4: 206
        //                5: 220
        //                6: 234
        //                7: 248
        //          default: 176
        //        }
        //   176: iconst_1       
        //   177: ireturn        
        //   178: aload_0        
        //   179: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebBridge._listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebBrigeListener;
        //   182: aload           7
        //   184: invokeinterface com/fusepowered/a1/webapp/IApplifierImpactWebBrigeListener.onPlayVideo:(Lorg/json/JSONObject;)V
        //   189: goto            176
        //   192: aload_0        
        //   193: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebBridge._listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebBrigeListener;
        //   196: aload           7
        //   198: invokeinterface com/fusepowered/a1/webapp/IApplifierImpactWebBrigeListener.onPauseVideo:(Lorg/json/JSONObject;)V
        //   203: goto            176
        //   206: aload_0        
        //   207: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebBridge._listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebBrigeListener;
        //   210: aload           7
        //   212: invokeinterface com/fusepowered/a1/webapp/IApplifierImpactWebBrigeListener.onCloseImpactView:(Lorg/json/JSONObject;)V
        //   217: goto            176
        //   220: aload_0        
        //   221: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebBridge._listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebBrigeListener;
        //   224: aload           7
        //   226: invokeinterface com/fusepowered/a1/webapp/IApplifierImpactWebBrigeListener.onWebAppInitComplete:(Lorg/json/JSONObject;)V
        //   231: goto            176
        //   234: aload_0        
        //   235: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebBridge._listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebBrigeListener;
        //   238: aload           7
        //   240: invokeinterface com/fusepowered/a1/webapp/IApplifierImpactWebBrigeListener.onOpenPlayStore:(Lorg/json/JSONObject;)V
        //   245: goto            176
        //   248: aload           7
        //   250: ldc             "clickUrl"
        //   252: invokevirtual   org/json/JSONObject.has:(Ljava/lang/String;)Z
        //   255: ifeq            176
        //   258: aload           7
        //   260: ldc             "clickUrl"
        //   262: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   265: astore          10
        //   267: aload           10
        //   269: ifnull          176
        //   272: new             Landroid/content/Intent;
        //   275: dup            
        //   276: ldc             "android.intent.action.VIEW"
        //   278: invokespecial   android/content/Intent.<init>:(Ljava/lang/String;)V
        //   281: astore          11
        //   283: aload           11
        //   285: aload           10
        //   287: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   290: invokevirtual   android/content/Intent.setData:(Landroid/net/Uri;)Landroid/content/Intent;
        //   293: pop            
        //   294: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.CURRENT_ACTIVITY:Landroid/app/Activity;
        //   297: aload           11
        //   299: invokevirtual   android/app/Activity.startActivity:(Landroid/content/Intent;)V
        //   302: goto            176
        //   305: astore          12
        //   307: new             Ljava/lang/StringBuilder;
        //   310: dup            
        //   311: ldc             "Could not start activity for opening URL: "
        //   313: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   316: aload           10
        //   318: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   321: ldc             ", maybe malformed URL?"
        //   323: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   326: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   329: aload_0        
        //   330: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
        //   333: goto            176
        //   336: astore          9
        //   338: ldc             "Error fetching clickUrl"
        //   340: aload_0        
        //   341: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
        //   344: iconst_0       
        //   345: ireturn        
        //   346: astore          5
        //   348: aload           5
        //   350: astore          6
        //   352: aload           4
        //   354: astore_3       
        //   355: goto            86
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  44     54     80     86     Ljava/lang/Exception;
        //  54     63     346    358    Ljava/lang/Exception;
        //  258    267    336    346    Ljava/lang/Exception;
        //  272    302    305    336    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0070:
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
    
    private enum ApplifierImpactWebEvent
    {
        CloseView("CloseView", 2), 
        InitComplete("InitComplete", 3), 
        NavigateTo("NavigateTo", 5), 
        PauseVideo("PauseVideo", 1), 
        PlayStore("PlayStore", 4), 
        PlayVideo("PlayVideo", 0);
        
        static /* synthetic */ int[] $SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent() {
            final int[] $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent = ApplifierImpactWebEvent.$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent;
            if ($switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent != null) {
                return $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent;
            }
            final int[] $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent2 = new int[values().length];
            while (true) {
                try {
                    $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent2[ApplifierImpactWebEvent.CloseView.ordinal()] = 3;
                    try {
                        $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent2[ApplifierImpactWebEvent.InitComplete.ordinal()] = 4;
                        try {
                            $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent2[ApplifierImpactWebEvent.NavigateTo.ordinal()] = 6;
                            try {
                                $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent2[ApplifierImpactWebEvent.PauseVideo.ordinal()] = 2;
                                try {
                                    $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent2[ApplifierImpactWebEvent.PlayStore.ordinal()] = 5;
                                    try {
                                        $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent2[ApplifierImpactWebEvent.PlayVideo.ordinal()] = 1;
                                        return ApplifierImpactWebEvent.$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent = $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent2;
                                    }
                                    catch (NoSuchFieldError noSuchFieldError) {}
                                }
                                catch (NoSuchFieldError noSuchFieldError2) {}
                            }
                            catch (NoSuchFieldError noSuchFieldError3) {}
                        }
                        catch (NoSuchFieldError noSuchFieldError4) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError5) {}
                }
                catch (NoSuchFieldError noSuchFieldError6) {
                    continue;
                }
                break;
            }
        }
        
        @Override
        public String toString() {
            switch ($SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent()[this.ordinal()]) {
                default: {
                    return null;
                }
                case 1: {
                    return "playVideo";
                }
                case 2: {
                    return "pauseVideo";
                }
                case 3: {
                    return "close";
                }
                case 4: {
                    return "initComplete";
                }
                case 5: {
                    return "appStore";
                }
                case 6: {
                    return "navigateTo";
                }
            }
        }
    }
}

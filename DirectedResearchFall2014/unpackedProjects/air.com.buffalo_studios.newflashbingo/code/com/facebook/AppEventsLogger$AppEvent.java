package com.facebook;

import java.io.*;
import android.os.*;
import com.facebook.internal.*;
import org.json.*;
import java.util.*;

class AppEventsLogger$AppEvent implements Serializable
{
    private static final long serialVersionUID = 1L;
    private static final HashSet<String> validatedIdentifiers;
    private boolean isImplicit;
    private JSONObject jsonObject;
    private String name;
    
    static {
        validatedIdentifiers = new HashSet<String>();
    }
    
    public AppEventsLogger$AppEvent(final String name, final Double n, final Bundle bundle, final boolean isImplicit) {
        Label_0269: {
            while (true) {
                super();
                this.validateIdentifier(name);
                this.name = name;
                this.isImplicit = isImplicit;
                this.jsonObject = new JSONObject();
                while (true) {
                    String s = null;
                    Object value = null;
                    Label_0251: {
                        try {
                            this.jsonObject.put("_eventName", (Object)name);
                            this.jsonObject.put("_logTime", System.currentTimeMillis() / 1000L);
                            if (n != null) {
                                this.jsonObject.put("_valueToSum", (double)n);
                            }
                            if (this.isImplicit) {
                                this.jsonObject.put("_implicitlyLogged", (Object)"1");
                            }
                            final String appVersion = Settings.getAppVersion();
                            if (appVersion != null) {
                                this.jsonObject.put("_appVersion", (Object)appVersion);
                            }
                            if (bundle == null) {
                                break Label_0269;
                            }
                            final Iterator<String> iterator = (Iterator<String>)bundle.keySet().iterator();
                            if (!iterator.hasNext()) {
                                break Label_0269;
                            }
                            s = iterator.next();
                            this.validateIdentifier(s);
                            value = bundle.get(s);
                            if (!(value instanceof String) && !(value instanceof Number)) {
                                throw new FacebookException(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", value, s));
                            }
                            break Label_0251;
                        }
                        catch (JSONException ex) {
                            Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", ex.toString());
                            this.jsonObject = null;
                        }
                        break;
                    }
                    this.jsonObject.put(s, (Object)value.toString());
                    continue;
                }
            }
            return;
        }
        if (!this.isImplicit) {
            Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "Created app event '%s'", this.jsonObject.toString());
        }
    }
    
    private AppEventsLogger$AppEvent(final String s, final boolean isImplicit) {
        super();
        this.jsonObject = new JSONObject(s);
        this.isImplicit = isImplicit;
    }
    
    private void validateIdentifier(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: ifnull          20
        //     4: aload_1        
        //     5: invokevirtual   java/lang/String.length:()I
        //     8: ifeq            20
        //    11: aload_1        
        //    12: invokevirtual   java/lang/String.length:()I
        //    15: bipush          40
        //    17: if_icmple       58
        //    20: aload_1        
        //    21: ifnonnull       149
        //    24: ldc             "<None Provided>"
        //    26: astore_2       
        //    27: iconst_2       
        //    28: anewarray       Ljava/lang/Object;
        //    31: astore_3       
        //    32: aload_3        
        //    33: iconst_0       
        //    34: aload_2        
        //    35: aastore        
        //    36: aload_3        
        //    37: iconst_1       
        //    38: bipush          40
        //    40: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //    43: aastore        
        //    44: new             Lcom/facebook/FacebookException;
        //    47: dup            
        //    48: ldc             "Identifier '%s' must be less than %d characters"
        //    50: aload_3        
        //    51: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //    54: invokespecial   com/facebook/FacebookException.<init>:(Ljava/lang/String;)V
        //    57: athrow         
        //    58: getstatic       com/facebook/AppEventsLogger$AppEvent.validatedIdentifiers:Ljava/util/HashSet;
        //    61: astore          4
        //    63: aload           4
        //    65: monitorenter   
        //    66: getstatic       com/facebook/AppEventsLogger$AppEvent.validatedIdentifiers:Ljava/util/HashSet;
        //    69: aload_1        
        //    70: invokevirtual   java/util/HashSet.contains:(Ljava/lang/Object;)Z
        //    73: istore          6
        //    75: aload           4
        //    77: monitorexit    
        //    78: iload           6
        //    80: ifne            111
        //    83: aload_1        
        //    84: ldc             "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"
        //    86: invokevirtual   java/lang/String.matches:(Ljava/lang/String;)Z
        //    89: ifeq            128
        //    92: getstatic       com/facebook/AppEventsLogger$AppEvent.validatedIdentifiers:Ljava/util/HashSet;
        //    95: astore          7
        //    97: aload           7
        //    99: monitorenter   
        //   100: getstatic       com/facebook/AppEventsLogger$AppEvent.validatedIdentifiers:Ljava/util/HashSet;
        //   103: aload_1        
        //   104: invokevirtual   java/util/HashSet.add:(Ljava/lang/Object;)Z
        //   107: pop            
        //   108: aload           7
        //   110: monitorexit    
        //   111: return         
        //   112: astore          5
        //   114: aload           4
        //   116: monitorexit    
        //   117: aload           5
        //   119: athrow         
        //   120: astore          8
        //   122: aload           7
        //   124: monitorexit    
        //   125: aload           8
        //   127: athrow         
        //   128: new             Lcom/facebook/FacebookException;
        //   131: dup            
        //   132: ldc             "Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen."
        //   134: iconst_1       
        //   135: anewarray       Ljava/lang/Object;
        //   138: dup            
        //   139: iconst_0       
        //   140: aload_1        
        //   141: aastore        
        //   142: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   145: invokespecial   com/facebook/FacebookException.<init>:(Ljava/lang/String;)V
        //   148: athrow         
        //   149: aload_1        
        //   150: astore_2       
        //   151: goto            27
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  66     78     112    120    Any
        //  100    111    120    128    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0111:
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
    
    private Object writeReplace() {
        return new AppEventsLogger$AppEvent$SerializationProxyV1(this.jsonObject.toString(), this.isImplicit, null);
    }
    
    public boolean getIsImplicit() {
        return this.isImplicit;
    }
    
    public JSONObject getJSONObject() {
        return this.jsonObject;
    }
    
    public String getName() {
        return this.name;
    }
    
    @Override
    public final String toString() {
        return String.format("\"%s\", implicit: %b, json: %s", this.jsonObject.optString("_eventName"), this.isImplicit, this.jsonObject.toString());
    }
}

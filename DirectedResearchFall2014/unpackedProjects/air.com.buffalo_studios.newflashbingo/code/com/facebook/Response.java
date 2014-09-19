package com.facebook;

import java.util.*;
import com.facebook.model.*;
import java.io.*;
import org.json.*;
import com.facebook.internal.*;
import android.content.*;
import java.net.*;

public class Response
{
    private static final String BODY_KEY = "body";
    private static final String CODE_KEY = "code";
    private static final int INVALID_SESSION_FACEBOOK_ERROR_CODE = 190;
    public static final String NON_JSON_RESPONSE_PROPERTY = "FACEBOOK_NON_JSON_RESULT";
    private static final String RESPONSE_CACHE_TAG = "ResponseCache";
    private static final String RESPONSE_LOG_TAG = "Response";
    private static FileLruCache responseCache;
    private final HttpURLConnection connection;
    private final FacebookRequestError error;
    private final GraphObject graphObject;
    private final GraphObjectList<GraphObject> graphObjectList;
    private final boolean isFromCache;
    private final Request request;
    
    Response(final Request request, final HttpURLConnection connection, final FacebookRequestError error) {
        super();
        this.request = request;
        this.connection = connection;
        this.graphObject = null;
        this.graphObjectList = null;
        this.isFromCache = false;
        this.error = error;
    }
    
    Response(final Request request, final HttpURLConnection connection, final GraphObject graphObject, final boolean isFromCache) {
        super();
        this.request = request;
        this.connection = connection;
        this.graphObject = graphObject;
        this.graphObjectList = null;
        this.isFromCache = isFromCache;
        this.error = null;
    }
    
    Response(final Request request, final HttpURLConnection connection, final GraphObjectList<GraphObject> graphObjectList, final boolean isFromCache) {
        super();
        this.request = request;
        this.connection = connection;
        this.graphObject = null;
        this.graphObjectList = graphObjectList;
        this.isFromCache = isFromCache;
        this.error = null;
    }
    
    static List<Response> constructErrorResponses(final List<Request> list, final HttpURLConnection httpURLConnection, final FacebookException ex) {
        final int size = list.size();
        final ArrayList list2 = new ArrayList<Response>(size);
        for (int i = 0; i < size; ++i) {
            list2.add(new Response(list.get(i), httpURLConnection, new FacebookRequestError(httpURLConnection, ex)));
        }
        return (List<Response>)list2;
    }
    
    private static Response createResponseFromObject(final Request request, final HttpURLConnection httpURLConnection, final Object o, final boolean b, final Object o2) {
        Object null;
        if (o instanceof JSONObject) {
            final JSONObject jsonObject = (JSONObject)o;
            final FacebookRequestError checkResponseAndCreateError = FacebookRequestError.checkResponseAndCreateError(jsonObject, o2, httpURLConnection);
            if (checkResponseAndCreateError != null) {
                if (checkResponseAndCreateError.getErrorCode() == 190) {
                    final Session session = request.getSession();
                    if (session != null) {
                        session.closeAndClearTokenInformation();
                    }
                }
                return new Response(request, httpURLConnection, checkResponseAndCreateError);
            }
            final Object stringPropertyAsJSON = Utility.getStringPropertyAsJSON(jsonObject, "body", "FACEBOOK_NON_JSON_RESULT");
            if (stringPropertyAsJSON instanceof JSONObject) {
                return new Response(request, httpURLConnection, GraphObject$Factory.create((JSONObject)stringPropertyAsJSON), b);
            }
            if (stringPropertyAsJSON instanceof JSONArray) {
                return new Response(request, httpURLConnection, GraphObject$Factory.createList((JSONArray)stringPropertyAsJSON, GraphObject.class), b);
            }
            null = JSONObject.NULL;
        }
        else {
            null = o;
        }
        if (null == JSONObject.NULL) {
            return new Response(request, httpURLConnection, (GraphObject)null, b);
        }
        throw new FacebookException("Got unexpected object type in response, class: " + null.getClass().getSimpleName());
    }
    
    private static List<Response> createResponsesFromObject(final HttpURLConnection httpURLConnection, final List<Request> list, final Object o, final boolean b) {
        assert !(!b);
        final int size = list.size();
        final ArrayList list2 = new ArrayList<Response>(size);
        while (true) {
            Label_0223: {
                if (size != 1) {
                    break Label_0223;
                }
                final Request request = list.get(0);
                Object o2 = null;
                Label_0229: {
                    try {
                        final JSONObject jsonObject = new JSONObject();
                        jsonObject.put("body", o);
                        int responseCode;
                        if (httpURLConnection != null) {
                            responseCode = httpURLConnection.getResponseCode();
                        }
                        else {
                            responseCode = 200;
                        }
                        jsonObject.put("code", responseCode);
                        final JSONArray jsonArray = new JSONArray();
                        jsonArray.put((Object)jsonObject);
                        o2 = jsonArray;
                        if (!(o2 instanceof JSONArray) || ((JSONArray)o2).length() != size) {
                            throw new FacebookException("Unexpected number of results");
                        }
                        break Label_0229;
                    }
                    catch (JSONException ex) {
                        list2.add(new Response(request, httpURLConnection, new FacebookRequestError(httpURLConnection, (Exception)ex)));
                        o2 = o;
                        continue;
                    }
                    catch (IOException ex2) {
                        list2.add(new Response(request, httpURLConnection, new FacebookRequestError(httpURLConnection, ex2)));
                    }
                    break Label_0223;
                }
                final JSONArray jsonArray2 = (JSONArray)o2;
                int i = 0;
            Label_0285_Outer:
                while (i < jsonArray2.length()) {
                    final Request request2 = list.get(i);
                    while (true) {
                        try {
                            list2.add(createResponseFromObject(request2, httpURLConnection, jsonArray2.get(i), b, o));
                            ++i;
                            continue Label_0285_Outer;
                        }
                        catch (JSONException ex3) {
                            list2.add(new Response(request2, httpURLConnection, new FacebookRequestError(httpURLConnection, (Exception)ex3)));
                            continue;
                        }
                        catch (FacebookException ex4) {
                            list2.add(new Response(request2, httpURLConnection, new FacebookRequestError(httpURLConnection, ex4)));
                            continue;
                        }
                        break;
                    }
                    break;
                }
                return (List<Response>)list2;
            }
            Object o2 = o;
            continue;
        }
    }
    
    static List<Response> createResponsesFromStream(final InputStream inputStream, final HttpURLConnection httpURLConnection, final RequestBatch requestBatch, final boolean b) {
        final String streamToString = Utility.readStreamToString(inputStream);
        Logger.log(LoggingBehavior.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", streamToString.length(), streamToString);
        return createResponsesFromString(streamToString, httpURLConnection, requestBatch, b);
    }
    
    static List<Response> createResponsesFromString(final String s, final HttpURLConnection httpURLConnection, final RequestBatch requestBatch, final boolean b) {
        final List<Response> responsesFromObject = createResponsesFromObject(httpURLConnection, requestBatch, new JSONTokener(s).nextValue(), b);
        Logger.log(LoggingBehavior.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", requestBatch.getId(), s.length(), responsesFromObject);
        return responsesFromObject;
    }
    
    static List<Response> fromHttpConnection(final HttpURLConnection p0, final RequestBatch p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: instanceof      Lcom/facebook/internal/CacheableRequestBatch;
        //     4: ifeq            616
        //     7: aload_1        
        //     8: checkcast       Lcom/facebook/internal/CacheableRequestBatch;
        //    11: astore          24
        //    13: invokestatic    com/facebook/Response.getResponseCache:()Lcom/facebook/internal/FileLruCache;
        //    16: astore_3       
        //    17: aload           24
        //    19: invokevirtual   com/facebook/internal/CacheableRequestBatch.getCacheKeyOverride:()Ljava/lang/String;
        //    22: astore          25
        //    24: aload           25
        //    26: invokestatic    com/facebook/internal/Utility.isNullOrEmpty:(Ljava/lang/String;)Z
        //    29: ifeq            50
        //    32: aload_1        
        //    33: invokevirtual   com/facebook/RequestBatch.size:()I
        //    36: iconst_1       
        //    37: if_icmpne       105
        //    40: aload_1        
        //    41: iconst_0       
        //    42: invokevirtual   com/facebook/RequestBatch.get:(I)Lcom/facebook/Request;
        //    45: invokevirtual   com/facebook/Request.getUrlForSingleRequest:()Ljava/lang/String;
        //    48: astore          25
        //    50: aload           24
        //    52: invokevirtual   com/facebook/internal/CacheableRequestBatch.getForceRoundTrip:()Z
        //    55: ifne            607
        //    58: aload_3        
        //    59: ifnull          607
        //    62: aload           25
        //    64: invokestatic    com/facebook/internal/Utility.isNullOrEmpty:(Ljava/lang/String;)Z
        //    67: ifne            607
        //    70: aload_3        
        //    71: aload           25
        //    73: invokevirtual   com/facebook/internal/FileLruCache.get:(Ljava/lang/String;)Ljava/io/InputStream;
        //    76: astore          35
        //    78: aload           35
        //    80: astore          29
        //    82: aload           29
        //    84: ifnull          119
        //    87: aload           29
        //    89: aconst_null    
        //    90: aload_1        
        //    91: iconst_1       
        //    92: invokestatic    com/facebook/Response.createResponsesFromStream:(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
        //    95: astore          41
        //    97: aload           29
        //    99: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   102: aload           41
        //   104: areturn        
        //   105: getstatic       com/facebook/LoggingBehavior.REQUESTS:Lcom/facebook/LoggingBehavior;
        //   108: ldc             "ResponseCache"
        //   110: ldc_w           "Not using cache for cacheable request because no key was specified"
        //   113: invokestatic    com/facebook/internal/Logger.log:(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
        //   116: goto            50
        //   119: aload           29
        //   121: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   124: aload           25
        //   126: astore          36
        //   128: aload           29
        //   130: astore          4
        //   132: aload           36
        //   134: astore_2       
        //   135: aload_0        
        //   136: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
        //   139: sipush          400
        //   142: if_icmplt       258
        //   145: aload_0        
        //   146: invokevirtual   java/net/HttpURLConnection.getErrorStream:()Ljava/io/InputStream;
        //   149: astore          23
        //   151: aload           23
        //   153: astore          15
        //   155: aload           15
        //   157: aload_0        
        //   158: aload_1        
        //   159: iconst_0       
        //   160: invokestatic    com/facebook/Response.createResponsesFromStream:(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
        //   163: astore          21
        //   165: aload           15
        //   167: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   170: aload           21
        //   172: areturn        
        //   173: astore          33
        //   175: aconst_null    
        //   176: astore          29
        //   178: aload           29
        //   180: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   183: aload           25
        //   185: astore          34
        //   187: aload           29
        //   189: astore          4
        //   191: aload           34
        //   193: astore_2       
        //   194: goto            135
        //   197: astore          31
        //   199: aconst_null    
        //   200: astore          29
        //   202: aload           29
        //   204: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   207: aload           25
        //   209: astore          32
        //   211: aload           29
        //   213: astore          4
        //   215: aload           32
        //   217: astore_2       
        //   218: goto            135
        //   221: astore          28
        //   223: aconst_null    
        //   224: astore          29
        //   226: aload           29
        //   228: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   231: aload           25
        //   233: astore          30
        //   235: aload           29
        //   237: astore          4
        //   239: aload           30
        //   241: astore_2       
        //   242: goto            135
        //   245: astore          26
        //   247: aconst_null    
        //   248: astore          27
        //   250: aload           27
        //   252: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   255: aload           26
        //   257: athrow         
        //   258: aload_0        
        //   259: invokevirtual   java/net/HttpURLConnection.getInputStream:()Ljava/io/InputStream;
        //   262: astore          4
        //   264: aload_3        
        //   265: ifnull          295
        //   268: aload_2        
        //   269: ifnull          295
        //   272: aload           4
        //   274: ifnull          295
        //   277: aload_3        
        //   278: aload_2        
        //   279: aload           4
        //   281: invokevirtual   com/facebook/internal/FileLruCache.interceptAndPut:(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
        //   284: astore          22
        //   286: aload           22
        //   288: astore          15
        //   290: aload           15
        //   292: ifnonnull       155
        //   295: aload           4
        //   297: astore          15
        //   299: goto            155
        //   302: astore          13
        //   304: aload           4
        //   306: astore          6
        //   308: getstatic       com/facebook/LoggingBehavior.REQUESTS:Lcom/facebook/LoggingBehavior;
        //   311: ldc             "Response"
        //   313: ldc_w           "Response <Error>: %s"
        //   316: iconst_1       
        //   317: anewarray       Ljava/lang/Object;
        //   320: dup            
        //   321: iconst_0       
        //   322: aload           13
        //   324: aastore        
        //   325: invokestatic    com/facebook/internal/Logger.log:(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
        //   328: aload_1        
        //   329: aload_0        
        //   330: aload           13
        //   332: invokestatic    com/facebook/Response.constructErrorResponses:(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
        //   335: astore          14
        //   337: aload           6
        //   339: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   342: aload           14
        //   344: areturn        
        //   345: astore          11
        //   347: aload           4
        //   349: astore          6
        //   351: getstatic       com/facebook/LoggingBehavior.REQUESTS:Lcom/facebook/LoggingBehavior;
        //   354: ldc             "Response"
        //   356: ldc_w           "Response <Error>: %s"
        //   359: iconst_1       
        //   360: anewarray       Ljava/lang/Object;
        //   363: dup            
        //   364: iconst_0       
        //   365: aload           11
        //   367: aastore        
        //   368: invokestatic    com/facebook/internal/Logger.log:(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
        //   371: aload_1        
        //   372: aload_0        
        //   373: new             Lcom/facebook/FacebookException;
        //   376: dup            
        //   377: aload           11
        //   379: invokespecial   com/facebook/FacebookException.<init>:(Ljava/lang/Throwable;)V
        //   382: invokestatic    com/facebook/Response.constructErrorResponses:(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
        //   385: astore          12
        //   387: aload           6
        //   389: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   392: aload           12
        //   394: areturn        
        //   395: astore          9
        //   397: aload           4
        //   399: astore          6
        //   401: getstatic       com/facebook/LoggingBehavior.REQUESTS:Lcom/facebook/LoggingBehavior;
        //   404: ldc             "Response"
        //   406: ldc_w           "Response <Error>: %s"
        //   409: iconst_1       
        //   410: anewarray       Ljava/lang/Object;
        //   413: dup            
        //   414: iconst_0       
        //   415: aload           9
        //   417: aastore        
        //   418: invokestatic    com/facebook/internal/Logger.log:(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
        //   421: aload_1        
        //   422: aload_0        
        //   423: new             Lcom/facebook/FacebookException;
        //   426: dup            
        //   427: aload           9
        //   429: invokespecial   com/facebook/FacebookException.<init>:(Ljava/lang/Throwable;)V
        //   432: invokestatic    com/facebook/Response.constructErrorResponses:(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
        //   435: astore          10
        //   437: aload           6
        //   439: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   442: aload           10
        //   444: areturn        
        //   445: astore          7
        //   447: aload           4
        //   449: astore          6
        //   451: getstatic       com/facebook/LoggingBehavior.REQUESTS:Lcom/facebook/LoggingBehavior;
        //   454: ldc             "Response"
        //   456: ldc_w           "Response <Error>: %s"
        //   459: iconst_1       
        //   460: anewarray       Ljava/lang/Object;
        //   463: dup            
        //   464: iconst_0       
        //   465: aload           7
        //   467: aastore        
        //   468: invokestatic    com/facebook/internal/Logger.log:(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
        //   471: aload_1        
        //   472: aload_0        
        //   473: new             Lcom/facebook/FacebookException;
        //   476: dup            
        //   477: aload           7
        //   479: invokespecial   com/facebook/FacebookException.<init>:(Ljava/lang/Throwable;)V
        //   482: invokestatic    com/facebook/Response.constructErrorResponses:(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
        //   485: astore          8
        //   487: aload           6
        //   489: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   492: aload           8
        //   494: areturn        
        //   495: astore          5
        //   497: aload           4
        //   499: astore          6
        //   501: aload           6
        //   503: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   506: aload           5
        //   508: athrow         
        //   509: astore          20
        //   511: aload           15
        //   513: astore          6
        //   515: aload           20
        //   517: astore          5
        //   519: goto            501
        //   522: astore          5
        //   524: goto            501
        //   527: astore          19
        //   529: aload           15
        //   531: astore          6
        //   533: aload           19
        //   535: astore          7
        //   537: goto            451
        //   540: astore          18
        //   542: aload           15
        //   544: astore          6
        //   546: aload           18
        //   548: astore          9
        //   550: goto            401
        //   553: astore          17
        //   555: aload           15
        //   557: astore          6
        //   559: aload           17
        //   561: astore          11
        //   563: goto            351
        //   566: astore          16
        //   568: aload           15
        //   570: astore          6
        //   572: aload           16
        //   574: astore          13
        //   576: goto            308
        //   579: astore          40
        //   581: aload           29
        //   583: astore          27
        //   585: aload           40
        //   587: astore          26
        //   589: goto            250
        //   592: astore          39
        //   594: goto            226
        //   597: astore          38
        //   599: goto            202
        //   602: astore          37
        //   604: goto            178
        //   607: aload           25
        //   609: astore_2       
        //   610: aconst_null    
        //   611: astore          4
        //   613: goto            135
        //   616: aconst_null    
        //   617: astore_2       
        //   618: aconst_null    
        //   619: astore_3       
        //   620: aconst_null    
        //   621: astore          4
        //   623: goto            135
        //    Signature:
        //  (Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List<Lcom/facebook/Response;>;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  70     78     173    178    Lcom/facebook/FacebookException;
        //  70     78     197    202    Lorg/json/JSONException;
        //  70     78     221    226    Ljava/io/IOException;
        //  70     78     245    250    Any
        //  87     97     602    607    Lcom/facebook/FacebookException;
        //  87     97     597    602    Lorg/json/JSONException;
        //  87     97     592    597    Ljava/io/IOException;
        //  87     97     579    592    Any
        //  135    151    302    308    Lcom/facebook/FacebookException;
        //  135    151    345    351    Lorg/json/JSONException;
        //  135    151    395    401    Ljava/io/IOException;
        //  135    151    445    451    Ljava/lang/SecurityException;
        //  135    151    495    501    Any
        //  155    165    566    579    Lcom/facebook/FacebookException;
        //  155    165    553    566    Lorg/json/JSONException;
        //  155    165    540    553    Ljava/io/IOException;
        //  155    165    527    540    Ljava/lang/SecurityException;
        //  155    165    509    522    Any
        //  258    264    302    308    Lcom/facebook/FacebookException;
        //  258    264    345    351    Lorg/json/JSONException;
        //  258    264    395    401    Ljava/io/IOException;
        //  258    264    445    451    Ljava/lang/SecurityException;
        //  258    264    495    501    Any
        //  277    286    302    308    Lcom/facebook/FacebookException;
        //  277    286    345    351    Lorg/json/JSONException;
        //  277    286    395    401    Ljava/io/IOException;
        //  277    286    445    451    Ljava/lang/SecurityException;
        //  277    286    495    501    Any
        //  308    337    522    527    Any
        //  351    387    522    527    Any
        //  401    437    522    527    Any
        //  451    487    522    527    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 305, Size: 305
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3419)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
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
    
    static FileLruCache getResponseCache() {
        if (Response.responseCache == null) {
            final Context staticContext = Session.getStaticContext();
            if (staticContext != null) {
                Response.responseCache = new FileLruCache(staticContext, "ResponseCache", new FileLruCache$Limits());
            }
        }
        return Response.responseCache;
    }
    
    public final HttpURLConnection getConnection() {
        return this.connection;
    }
    
    public final FacebookRequestError getError() {
        return this.error;
    }
    
    public final GraphObject getGraphObject() {
        return this.graphObject;
    }
    
    public final <T extends GraphObject> T getGraphObjectAs(final Class<T> clazz) {
        if (this.graphObject == null) {
            return null;
        }
        if (clazz == null) {
            throw new NullPointerException("Must pass in a valid interface that extends GraphObject");
        }
        return this.graphObject.cast(clazz);
    }
    
    public final GraphObjectList<GraphObject> getGraphObjectList() {
        return this.graphObjectList;
    }
    
    public final <T extends GraphObject> GraphObjectList<T> getGraphObjectListAs(final Class<T> clazz) {
        if (this.graphObjectList == null) {
            return null;
        }
        return this.graphObjectList.castToListOf(clazz);
    }
    
    public final boolean getIsFromCache() {
        return this.isFromCache;
    }
    
    public Request getRequest() {
        return this.request;
    }
    
    public Request getRequestForPagedResults(final Response$PagingDirection response$PagingDirection) {
        while (true) {
            Label_0118: {
                if (this.graphObject == null) {
                    break Label_0118;
                }
                final Response$PagingInfo paging = this.graphObject.cast(Response$PagedResults.class).getPaging();
                if (paging == null) {
                    break Label_0118;
                }
                String spec;
                if (response$PagingDirection == Response$PagingDirection.NEXT) {
                    spec = paging.getNext();
                }
                else {
                    spec = paging.getPrevious();
                }
                if (Utility.isNullOrEmpty(spec)) {
                    return null;
                }
                if (spec != null && spec.equals(this.request.getUrlForSingleRequest())) {
                    return null;
                }
                try {
                    return new Request(this.request.getSession(), new URL(spec));
                }
                catch (MalformedURLException ex) {
                    return null;
                }
            }
            String spec = null;
            continue;
        }
    }
    
    @Override
    public final String toString() {
        try {
            final Object[] args = { null };
            int responseCode;
            if (this.connection != null) {
                responseCode = this.connection.getResponseCode();
            }
            else {
                responseCode = 200;
            }
            args[0] = responseCode;
            final String format = String.format("%d", args);
            return "{Response:  responseCode: " + format + ", graphObject: " + this.graphObject + ", error: " + this.error + ", isFromCache:" + this.isFromCache + "}";
        }
        catch (IOException ex) {
            final String format = "unknown";
            return "{Response:  responseCode: " + format + ", graphObject: " + this.graphObject + ", error: " + this.error + ", isFromCache:" + this.isFromCache + "}";
        }
    }
}

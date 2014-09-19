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
    private final GraphObjectList graphObjectList;
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
    
    Response(final Request request, final HttpURLConnection connection, final GraphObjectList graphObjectList, final boolean isFromCache) {
        super();
        this.request = request;
        this.connection = connection;
        this.graphObject = null;
        this.graphObjectList = graphObjectList;
        this.isFromCache = isFromCache;
        this.error = null;
    }
    
    static List constructErrorResponses(final List list, final HttpURLConnection httpURLConnection, final FacebookException ex) {
        final int size = list.size();
        final ArrayList list2 = new ArrayList<Response>(size);
        for (int i = 0; i < size; ++i) {
            list2.add(new Response(list.get(i), httpURLConnection, new FacebookRequestError(httpURLConnection, ex)));
        }
        return list2;
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
    
    private static List createResponsesFromObject(final HttpURLConnection httpURLConnection, final List list, final Object o, final boolean b) {
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
                return list2;
            }
            Object o2 = o;
            continue;
        }
    }
    
    static List createResponsesFromStream(final InputStream inputStream, final HttpURLConnection httpURLConnection, final RequestBatch requestBatch, final boolean b) {
        final String streamToString = Utility.readStreamToString(inputStream);
        Logger.log(LoggingBehavior.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", streamToString.length(), streamToString);
        return createResponsesFromString(streamToString, httpURLConnection, requestBatch, b);
    }
    
    static List createResponsesFromString(final String s, final HttpURLConnection httpURLConnection, final RequestBatch requestBatch, final boolean b) {
        final List responsesFromObject = createResponsesFromObject(httpURLConnection, requestBatch, new JSONTokener(s).nextValue(), b);
        Logger.log(LoggingBehavior.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", requestBatch.getId(), s.length(), responsesFromObject);
        return responsesFromObject;
    }
    
    static List fromHttpConnection(final HttpURLConnection p0, final RequestBatch p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: instanceof      Lcom/facebook/internal/CacheableRequestBatch;
        //     4: ifeq            550
        //     7: aload_1        
        //     8: checkcast       Lcom/facebook/internal/CacheableRequestBatch;
        //    11: astore          21
        //    13: invokestatic    com/facebook/Response.getResponseCache:()Lcom/facebook/internal/FileLruCache;
        //    16: astore_3       
        //    17: aload           21
        //    19: invokevirtual   com/facebook/internal/CacheableRequestBatch.getCacheKeyOverride:()Ljava/lang/String;
        //    22: astore          22
        //    24: aload           22
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
        //    48: astore          22
        //    50: aload           21
        //    52: invokevirtual   com/facebook/internal/CacheableRequestBatch.getForceRoundTrip:()Z
        //    55: ifne            544
        //    58: aload_3        
        //    59: ifnull          544
        //    62: aload           22
        //    64: invokestatic    com/facebook/internal/Utility.isNullOrEmpty:(Ljava/lang/String;)Z
        //    67: ifne            544
        //    70: aload_3        
        //    71: aload           22
        //    73: invokevirtual   com/facebook/internal/FileLruCache.get:(Ljava/lang/String;)Ljava/io/InputStream;
        //    76: astore          29
        //    78: aload           29
        //    80: astore          26
        //    82: aload           26
        //    84: ifnull          119
        //    87: aload           26
        //    89: aconst_null    
        //    90: aload_1        
        //    91: iconst_1       
        //    92: invokestatic    com/facebook/Response.createResponsesFromStream:(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
        //    95: astore          34
        //    97: aload           26
        //    99: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   102: aload           34
        //   104: areturn        
        //   105: getstatic       com/facebook/LoggingBehavior.REQUESTS:Lcom/facebook/LoggingBehavior;
        //   108: ldc             "ResponseCache"
        //   110: ldc_w           "Not using cache for cacheable request because no key was specified"
        //   113: invokestatic    com/facebook/internal/Logger.log:(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
        //   116: goto            50
        //   119: aload           26
        //   121: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   124: aload           22
        //   126: astore_2       
        //   127: aload_0        
        //   128: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
        //   131: sipush          400
        //   134: if_icmplt       226
        //   137: aload_0        
        //   138: invokevirtual   java/net/HttpURLConnection.getErrorStream:()Ljava/io/InputStream;
        //   141: astore          20
        //   143: aload           20
        //   145: astore          13
        //   147: aload           13
        //   149: aload_0        
        //   150: aload_1        
        //   151: iconst_0       
        //   152: invokestatic    com/facebook/Response.createResponsesFromStream:(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
        //   155: astore          18
        //   157: aload           13
        //   159: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   162: aload           18
        //   164: areturn        
        //   165: astore          28
        //   167: aconst_null    
        //   168: astore          26
        //   170: aload           26
        //   172: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   175: aload           22
        //   177: astore_2       
        //   178: goto            127
        //   181: astore          27
        //   183: aconst_null    
        //   184: astore          26
        //   186: aload           26
        //   188: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   191: aload           22
        //   193: astore_2       
        //   194: goto            127
        //   197: astore          25
        //   199: aconst_null    
        //   200: astore          26
        //   202: aload           26
        //   204: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   207: aload           22
        //   209: astore_2       
        //   210: goto            127
        //   213: astore          23
        //   215: aconst_null    
        //   216: astore          24
        //   218: aload           24
        //   220: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   223: aload           23
        //   225: athrow         
        //   226: aload_0        
        //   227: invokevirtual   java/net/HttpURLConnection.getInputStream:()Ljava/io/InputStream;
        //   230: astore          12
        //   232: aload_3        
        //   233: ifnull          263
        //   236: aload_2        
        //   237: ifnull          263
        //   240: aload           12
        //   242: ifnull          263
        //   245: aload_3        
        //   246: aload_2        
        //   247: aload           12
        //   249: invokevirtual   com/facebook/internal/FileLruCache.interceptAndPut:(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
        //   252: astore          19
        //   254: aload           19
        //   256: astore          13
        //   258: aload           13
        //   260: ifnonnull       147
        //   263: aload           12
        //   265: astore          13
        //   267: goto            147
        //   270: astore          10
        //   272: aconst_null    
        //   273: astore          5
        //   275: getstatic       com/facebook/LoggingBehavior.REQUESTS:Lcom/facebook/LoggingBehavior;
        //   278: ldc             "Response"
        //   280: ldc_w           "Response <Error>: %s"
        //   283: iconst_1       
        //   284: anewarray       Ljava/lang/Object;
        //   287: dup            
        //   288: iconst_0       
        //   289: aload           10
        //   291: aastore        
        //   292: invokestatic    com/facebook/internal/Logger.log:(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
        //   295: aload_1        
        //   296: aload_0        
        //   297: aload           10
        //   299: invokestatic    com/facebook/Response.constructErrorResponses:(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
        //   302: astore          11
        //   304: aload           5
        //   306: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   309: aload           11
        //   311: areturn        
        //   312: astore          8
        //   314: aconst_null    
        //   315: astore          5
        //   317: getstatic       com/facebook/LoggingBehavior.REQUESTS:Lcom/facebook/LoggingBehavior;
        //   320: ldc             "Response"
        //   322: ldc_w           "Response <Error>: %s"
        //   325: iconst_1       
        //   326: anewarray       Ljava/lang/Object;
        //   329: dup            
        //   330: iconst_0       
        //   331: aload           8
        //   333: aastore        
        //   334: invokestatic    com/facebook/internal/Logger.log:(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
        //   337: aload_1        
        //   338: aload_0        
        //   339: new             Lcom/facebook/FacebookException;
        //   342: dup            
        //   343: aload           8
        //   345: invokespecial   com/facebook/FacebookException.<init>:(Ljava/lang/Throwable;)V
        //   348: invokestatic    com/facebook/Response.constructErrorResponses:(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
        //   351: astore          9
        //   353: aload           5
        //   355: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   358: aload           9
        //   360: areturn        
        //   361: astore          6
        //   363: aconst_null    
        //   364: astore          5
        //   366: getstatic       com/facebook/LoggingBehavior.REQUESTS:Lcom/facebook/LoggingBehavior;
        //   369: ldc             "Response"
        //   371: ldc_w           "Response <Error>: %s"
        //   374: iconst_1       
        //   375: anewarray       Ljava/lang/Object;
        //   378: dup            
        //   379: iconst_0       
        //   380: aload           6
        //   382: aastore        
        //   383: invokestatic    com/facebook/internal/Logger.log:(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
        //   386: aload_1        
        //   387: aload_0        
        //   388: new             Lcom/facebook/FacebookException;
        //   391: dup            
        //   392: aload           6
        //   394: invokespecial   com/facebook/FacebookException.<init>:(Ljava/lang/Throwable;)V
        //   397: invokestatic    com/facebook/Response.constructErrorResponses:(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
        //   400: astore          7
        //   402: aload           5
        //   404: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   407: aload           7
        //   409: areturn        
        //   410: astore          4
        //   412: aconst_null    
        //   413: astore          5
        //   415: aload           5
        //   417: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   420: aload           4
        //   422: athrow         
        //   423: astore          4
        //   425: aload           12
        //   427: astore          5
        //   429: goto            415
        //   432: astore          17
        //   434: aload           13
        //   436: astore          5
        //   438: aload           17
        //   440: astore          4
        //   442: goto            415
        //   445: astore          4
        //   447: goto            415
        //   450: astore          6
        //   452: aload           12
        //   454: astore          5
        //   456: goto            366
        //   459: astore          16
        //   461: aload           13
        //   463: astore          5
        //   465: aload           16
        //   467: astore          6
        //   469: goto            366
        //   472: astore          8
        //   474: aload           12
        //   476: astore          5
        //   478: goto            317
        //   481: astore          15
        //   483: aload           13
        //   485: astore          5
        //   487: aload           15
        //   489: astore          8
        //   491: goto            317
        //   494: astore          10
        //   496: aload           12
        //   498: astore          5
        //   500: goto            275
        //   503: astore          14
        //   505: aload           13
        //   507: astore          5
        //   509: aload           14
        //   511: astore          10
        //   513: goto            275
        //   516: astore          33
        //   518: aload           26
        //   520: astore          24
        //   522: aload           33
        //   524: astore          23
        //   526: goto            218
        //   529: astore          32
        //   531: goto            202
        //   534: astore          31
        //   536: goto            186
        //   539: astore          30
        //   541: goto            170
        //   544: aload           22
        //   546: astore_2       
        //   547: goto            127
        //   550: aconst_null    
        //   551: astore_2       
        //   552: aconst_null    
        //   553: astore_3       
        //   554: goto            127
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  70     78     165    170    Lcom/facebook/FacebookException;
        //  70     78     181    186    Lorg/json/JSONException;
        //  70     78     197    202    Ljava/io/IOException;
        //  70     78     213    218    Any
        //  87     97     539    544    Lcom/facebook/FacebookException;
        //  87     97     534    539    Lorg/json/JSONException;
        //  87     97     529    534    Ljava/io/IOException;
        //  87     97     516    529    Any
        //  127    143    270    275    Lcom/facebook/FacebookException;
        //  127    143    312    317    Lorg/json/JSONException;
        //  127    143    361    366    Ljava/io/IOException;
        //  127    143    410    415    Any
        //  147    157    503    516    Lcom/facebook/FacebookException;
        //  147    157    481    494    Lorg/json/JSONException;
        //  147    157    459    472    Ljava/io/IOException;
        //  147    157    432    445    Any
        //  226    232    270    275    Lcom/facebook/FacebookException;
        //  226    232    312    317    Lorg/json/JSONException;
        //  226    232    361    366    Ljava/io/IOException;
        //  226    232    410    415    Any
        //  245    254    494    503    Lcom/facebook/FacebookException;
        //  245    254    472    481    Lorg/json/JSONException;
        //  245    254    450    459    Ljava/io/IOException;
        //  245    254    423    432    Any
        //  275    304    445    450    Any
        //  317    353    445    450    Any
        //  366    402    445    450    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 270, Size: 270
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
    
    public final GraphObject getGraphObjectAs(final Class clazz) {
        if (this.graphObject == null) {
            return null;
        }
        if (clazz == null) {
            throw new NullPointerException("Must pass in a valid interface that extends GraphObject");
        }
        return this.graphObject.cast(clazz);
    }
    
    public final GraphObjectList getGraphObjectList() {
        return this.graphObjectList;
    }
    
    public final GraphObjectList getGraphObjectListAs(final Class clazz) {
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
                final Response$PagingInfo paging = ((Response$PagedResults)this.graphObject.cast(Response$PagedResults.class)).getPaging();
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

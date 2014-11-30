.class public abstract Lcom/pocketchange/android/api/APIRequestExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;,
        Lcom/pocketchange/android/api/APIRequestExecutor$RequestBuilder;,
        Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;
    }
.end annotation


# static fields
.field public static final PARAM_ANDROID_BUILD_ID:Ljava/lang/String; = "android_build_id"

.field public static final PARAM_ANDROID_DEVICE_NAME:Ljava/lang/String; = "android_device_name"

.field public static final PARAM_ANDROID_ID:Ljava/lang/String; = "android_id"

.field public static final PARAM_ANDROID_MANUFACTURER:Ljava/lang/String; = "android_manufacturer"

.field public static final PARAM_ANDROID_MODEL:Ljava/lang/String; = "android_model"

.field public static final PARAM_ANDROID_PRODUCT_ID:Ljava/lang/String; = "android_product_id"

.field public static final PARAM_ANDROID_VERSION:Ljava/lang/String; = "android_version"

.field public static final PARAM_APPLICATION_VERSION_CODE:Ljava/lang/String; = "app_version_code"

.field public static final PARAM_APPLICATION_VERSION_NAME:Ljava/lang/String; = "app_version_name"

.field public static final PARAM_COUNTRY:Ljava/lang/String; = "country"

.field public static final PARAM_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field public static final PARAM_EMAIL:Ljava/lang/String; = "email"

.field public static final PARAM_LANGUAGE:Ljava/lang/String; = "language"

.field public static final PARAM_LEGACY_DEVICE_ID:Ljava/lang/String; = "legacy_device_id"

.field public static final PARAM_NETWORK_OPERATOR_CODE:Ljava/lang/String; = "network_operator_code"

.field public static final PARAM_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final PARAM_PHONE_RADIO_TYPE:Ljava/lang/String; = "phone_radio_type"

.field public static final PARAM_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field public static final PARAM_SIM_OPERATOR_CODE:Ljava/lang/String; = "sim_operator_code"

.field public static final PARAM_TELEPHONY_DEVICE_ID:Ljava/lang/String; = "telephony_device_id"

.field public static final STANDARD_PARAMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERBOSE_PARAMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:I


# instance fields
.field protected final debug:Z

.field protected final httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    const-string v0, "Basic "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/pocketchange/android/api/APIRequestExecutor;->a:I

    .line 85
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "device_type"

    aput-object v2, v1, v4

    const-string v2, "legacy_device_id"

    aput-object v2, v1, v5

    const-string v2, "android_id"

    aput-object v2, v1, v6

    const-string v2, "telephony_device_id"

    aput-object v2, v1, v7

    const-string v2, "email"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "sdk_version"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "app_version_name"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "app_version_code"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/pocketchange/android/api/APIRequestExecutor;->STANDARD_PARAMS:Ljava/util/Set;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/pocketchange/android/api/APIRequestExecutor;->STANDARD_PARAMS:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 98
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "network_operator_code"

    aput-object v2, v1, v4

    const-string v2, "sim_operator_code"

    aput-object v2, v1, v5

    const-string v2, "phone_radio_type"

    aput-object v2, v1, v6

    const-string v2, "country"

    aput-object v2, v1, v7

    const-string v2, "language"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "android_version"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "android_device_name"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "android_build_id"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "android_product_id"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "android_manufacturer"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "android_model"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/pocketchange/android/api/APIRequestExecutor;->VERBOSE_PARAMS:Ljava/util/Set;

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Z)V
    .locals 3
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p2, "debug"    # Z

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    if-nez p1, :cond_0

    .line 122
    invoke-static {}, Lcom/pocketchange/android/http/HttpClientFactory;->createClientParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 123
    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 124
    const v1, 0xea60

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 125
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 126
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-static {}, Lcom/pocketchange/android/http/HttpClientFactory;->createSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 127
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local p1    # "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-direct {p1, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 129
    .restart local p1    # "httpClient":Lorg/apache/http/client/HttpClient;
    :cond_0
    iput-object p1, p0, Lcom/pocketchange/android/api/APIRequestExecutor;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 130
    iput-boolean p2, p0, Lcom/pocketchange/android/api/APIRequestExecutor;->debug:Z

    .line 131
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/pocketchange/android/api/APIRequestExecutor;->a:I

    return v0
.end method

.method public static addParams(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Collection;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;>(",
            "Landroid/content/Context;",
            "TT;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Collection;, "TT;"
    .local p2, "paramsToAdd":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "defaultValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    const-string v6, ""

    .line 241
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 242
    if-nez v0, :cond_3

    move-object v2, v5

    .line 250
    :goto_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    :cond_1
    const-string v1, "sdk_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 256
    const-string v1, "6.0.0"

    .line 297
    :goto_2
    if-nez v1, :cond_2

    .line 298
    if-nez p3, :cond_18

    .line 299
    const-string v1, ""

    move-object v1, v6

    .line 307
    :cond_2
    :goto_3
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 245
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 246
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 247
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 257
    :cond_4
    const-string v1, "app_version_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 258
    invoke-static {p0}, Lcom/pocketchange/android/content/ContextUtils;->getApplicationVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 259
    :cond_5
    const-string v1, "app_version_code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 260
    invoke-static {p0}, Lcom/pocketchange/android/content/ContextUtils;->getApplicationVersionCode(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    .line 261
    if-nez v1, :cond_6

    move-object v1, v5

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 262
    :cond_7
    const-string v1, "legacy_device_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 263
    invoke-static {p0}, Lcom/pocketchange/android/content/ContextUtils;->getLegacyDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 264
    :cond_8
    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 265
    invoke-static {p0}, Lcom/pocketchange/android/content/ContextUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 266
    :cond_9
    const-string v1, "telephony_device_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 267
    invoke-static {p0}, Lcom/pocketchange/android/content/ContextUtils;->getTelephonyDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 268
    :cond_a
    const-string v1, "device_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 269
    const-string v1, "android"

    goto :goto_2

    .line 270
    :cond_b
    const-string v1, "network_operator_code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 271
    invoke-static {p0}, Lcom/pocketchange/android/content/ContextUtils;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 272
    :cond_c
    const-string v1, "sim_operator_code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 273
    invoke-static {p0}, Lcom/pocketchange/android/content/ContextUtils;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 274
    :cond_d
    const-string v1, "phone_radio_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 275
    invoke-static {p0}, Lcom/pocketchange/android/content/ContextUtils;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    invoke-static {v1}, Lcom/pocketchange/android/util/TelephonyUtils;->phoneTypeToString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 276
    :cond_e
    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 277
    invoke-static {p0}, Lcom/pocketchange/android/content/ContextUtils;->getPrimaryEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 278
    :cond_f
    const-string v1, "country"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 279
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 280
    :cond_10
    const-string v1, "language"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 281
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 282
    :cond_11
    const-string v1, "android_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 283
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 284
    :cond_12
    const-string v1, "android_device_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 285
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    goto/16 :goto_2

    .line 286
    :cond_13
    const-string v1, "android_build_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 287
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    goto/16 :goto_2

    .line 288
    :cond_14
    const-string v1, "android_product_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 289
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    goto/16 :goto_2

    .line 290
    :cond_15
    const-string v1, "android_manufacturer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 291
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto/16 :goto_2

    .line 292
    :cond_16
    const-string v1, "android_model"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 293
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto/16 :goto_2

    .line 295
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized parameter name ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_18
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    if-nez v1, :cond_2

    .line 303
    const-string v1, ""

    move-object v1, v6

    goto/16 :goto_3

    .line 309
    :cond_19
    return-object p1

    :cond_1a
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public static addStandardParams(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;>(",
            "Landroid/content/Context;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "params":Ljava/util/Collection;, "TT;"
    sget-object v0, Lcom/pocketchange/android/api/APIRequestExecutor;->STANDARD_PARAMS:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/pocketchange/android/api/APIRequestExecutor;->addParams(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static addVerboseParams(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;>(",
            "Landroid/content/Context;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "params":Ljava/util/Collection;, "TT;"
    sget-object v0, Lcom/pocketchange/android/api/APIRequestExecutor;->VERBOSE_PARAMS:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/pocketchange/android/api/APIRequestExecutor;->addParams(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static constructAPIRequest(Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5
    .param p0, "method"    # Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .prologue
    .line 314
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/NameValuePair;>;"
    sget-object v1, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->DELETE:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    if-ne p0, v1, :cond_2

    .line 315
    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 323
    :goto_0
    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    if-eqz p1, :cond_0

    .line 326
    :try_start_0
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Lcom/pocketchange/android/util/Base64Coder;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    if-eqz p3, :cond_1

    .line 329
    instance-of v2, v1, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v2, :cond_5

    .line 330
    move-object v0, v1

    check-cast v0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-object p0, v0

    .end local p0    # "method":Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "utf-8"

    invoke-direct {v2, p3, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_1
    :goto_1
    return-object v1

    .line 316
    .restart local p0    # "method":Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;
    :cond_2
    sget-object v1, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->GET:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    if-ne p0, v1, :cond_3

    .line 317
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_3
    sget-object v1, Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;->PUT:Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;

    if-ne p0, v1, :cond_4

    .line 319
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_4
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_5
    const/4 v2, 0x1

    :try_start_1
    invoke-static {p3, v2}, Lcom/pocketchange/android/net/URIUtils;->buildQuery(Ljava/util/Collection;Z)Ljava/lang/String;

    move-result-object v2

    .line 333
    if-eqz v2, :cond_1

    .line 334
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/pocketchange/android/net/URIUtils;->appendQuery(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 338
    .end local p0    # "method":Lcom/pocketchange/android/api/APIRequestExecutor$RequestMethod;
    :catch_0
    move-exception v1

    .line 339
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public shutdown()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/pocketchange/android/api/APIRequestExecutor;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 213
    return-void
.end method

.method public submitAPIRequest(Lcom/pocketchange/android/api/APIRequestExecutor$RequestBuilder;Lcom/pocketchange/android/api/JSONResponseHandler;Lcom/pocketchange/android/api/ExceptionHandler;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "requestBuilder"    # Lcom/pocketchange/android/api/APIRequestExecutor$RequestBuilder;
    .param p2, "responseHandler"    # Lcom/pocketchange/android/api/JSONResponseHandler;
    .param p3, "exceptionHandler"    # Lcom/pocketchange/android/api/ExceptionHandler;
    .param p4, "completionCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 134
    new-instance v0, Lcom/pocketchange/android/api/APIRequestExecutor$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pocketchange/android/api/APIRequestExecutor$1;-><init>(Lcom/pocketchange/android/api/APIRequestExecutor;Lcom/pocketchange/android/api/APIRequestExecutor$RequestBuilder;Lcom/pocketchange/android/api/JSONResponseHandler;Lcom/pocketchange/android/api/ExceptionHandler;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/api/APIRequestExecutor;->submitTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 179
    return-void
.end method

.method protected submitHTTPRequest(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/pocketchange/android/api/HTTPResponseHandler;Lcom/pocketchange/android/api/ExceptionHandler;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "responseHandler"    # Lcom/pocketchange/android/api/HTTPResponseHandler;
    .param p4, "exceptionHandler"    # Lcom/pocketchange/android/api/ExceptionHandler;
    .param p5, "completionCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 182
    new-instance v0, Lcom/pocketchange/android/api/APIRequestExecutor$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/pocketchange/android/api/APIRequestExecutor$2;-><init>(Lcom/pocketchange/android/api/APIRequestExecutor;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/HttpClient;Lcom/pocketchange/android/api/HTTPResponseHandler;Lcom/pocketchange/android/api/ExceptionHandler;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/api/APIRequestExecutor;->submitTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 207
    return-void
.end method

.method protected abstract submitTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end method

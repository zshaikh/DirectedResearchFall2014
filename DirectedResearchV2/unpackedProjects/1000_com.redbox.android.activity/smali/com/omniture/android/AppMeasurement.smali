.class public Lcom/omniture/android/AppMeasurement;
.super Ljava/lang/Object;
.source "AppMeasurement.java"


# static fields
.field private static final DEBUG_TAG:Ljava/lang/String; = "Omniture App Measurement Debug"

.field private static requestList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/omniture/android/Request;",
            ">;"
        }
    .end annotation
.end field

.field private static singletonInstance:Lcom/omniture/android/AppMeasurement;


# instance fields
.field public account:Ljava/lang/String;

.field private accountConfigList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private accountVarList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private accountVars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private application:Landroid/app/Application;

.field public campaign:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public charSet:Ljava/lang/String;

.field public currencyCode:Ljava/lang/String;

.field public dc:Ljava/lang/String;

.field public debugTracking:Z

.field public delegate:Lcom/omniture/android/AppMeasurementDelegate;

.field public dynamicVariablePrefix:Ljava/lang/String;

.field public eVar1:Ljava/lang/String;

.field public eVar10:Ljava/lang/String;

.field public eVar11:Ljava/lang/String;

.field public eVar12:Ljava/lang/String;

.field public eVar13:Ljava/lang/String;

.field public eVar14:Ljava/lang/String;

.field public eVar15:Ljava/lang/String;

.field public eVar16:Ljava/lang/String;

.field public eVar17:Ljava/lang/String;

.field public eVar18:Ljava/lang/String;

.field public eVar19:Ljava/lang/String;

.field public eVar2:Ljava/lang/String;

.field public eVar20:Ljava/lang/String;

.field public eVar21:Ljava/lang/String;

.field public eVar22:Ljava/lang/String;

.field public eVar23:Ljava/lang/String;

.field public eVar24:Ljava/lang/String;

.field public eVar25:Ljava/lang/String;

.field public eVar26:Ljava/lang/String;

.field public eVar27:Ljava/lang/String;

.field public eVar28:Ljava/lang/String;

.field public eVar29:Ljava/lang/String;

.field public eVar3:Ljava/lang/String;

.field public eVar30:Ljava/lang/String;

.field public eVar31:Ljava/lang/String;

.field public eVar32:Ljava/lang/String;

.field public eVar33:Ljava/lang/String;

.field public eVar34:Ljava/lang/String;

.field public eVar35:Ljava/lang/String;

.field public eVar36:Ljava/lang/String;

.field public eVar37:Ljava/lang/String;

.field public eVar38:Ljava/lang/String;

.field public eVar39:Ljava/lang/String;

.field public eVar4:Ljava/lang/String;

.field public eVar40:Ljava/lang/String;

.field public eVar41:Ljava/lang/String;

.field public eVar42:Ljava/lang/String;

.field public eVar43:Ljava/lang/String;

.field public eVar44:Ljava/lang/String;

.field public eVar45:Ljava/lang/String;

.field public eVar46:Ljava/lang/String;

.field public eVar47:Ljava/lang/String;

.field public eVar48:Ljava/lang/String;

.field public eVar49:Ljava/lang/String;

.field public eVar5:Ljava/lang/String;

.field public eVar50:Ljava/lang/String;

.field public eVar6:Ljava/lang/String;

.field public eVar7:Ljava/lang/String;

.field public eVar8:Ljava/lang/String;

.field public eVar9:Ljava/lang/String;

.field public events:Ljava/lang/String;

.field public hier1:Ljava/lang/String;

.field public hier2:Ljava/lang/String;

.field public hier3:Ljava/lang/String;

.field public hier4:Ljava/lang/String;

.field public hier5:Ljava/lang/String;

.field public linkLeaveQueryString:Z

.field public linkName:Ljava/lang/String;

.field public linkTrackEvents:Ljava/lang/String;

.field public linkTrackVars:Ljava/lang/String;

.field public linkType:Ljava/lang/String;

.field public linkURL:Ljava/lang/String;

.field public pageName:Ljava/lang/String;

.field public pageType:Ljava/lang/String;

.field public pageURL:Ljava/lang/String;

.field private pe:Ljava/lang/String;

.field private pev1:Ljava/lang/String;

.field private pev2:Ljava/lang/String;

.field public products:Ljava/lang/String;

.field public prop1:Ljava/lang/String;

.field public prop10:Ljava/lang/String;

.field public prop11:Ljava/lang/String;

.field public prop12:Ljava/lang/String;

.field public prop13:Ljava/lang/String;

.field public prop14:Ljava/lang/String;

.field public prop15:Ljava/lang/String;

.field public prop16:Ljava/lang/String;

.field public prop17:Ljava/lang/String;

.field public prop18:Ljava/lang/String;

.field public prop19:Ljava/lang/String;

.field public prop2:Ljava/lang/String;

.field public prop20:Ljava/lang/String;

.field public prop21:Ljava/lang/String;

.field public prop22:Ljava/lang/String;

.field public prop23:Ljava/lang/String;

.field public prop24:Ljava/lang/String;

.field public prop25:Ljava/lang/String;

.field public prop26:Ljava/lang/String;

.field public prop27:Ljava/lang/String;

.field public prop28:Ljava/lang/String;

.field public prop29:Ljava/lang/String;

.field public prop3:Ljava/lang/String;

.field public prop30:Ljava/lang/String;

.field public prop31:Ljava/lang/String;

.field public prop32:Ljava/lang/String;

.field public prop33:Ljava/lang/String;

.field public prop34:Ljava/lang/String;

.field public prop35:Ljava/lang/String;

.field public prop36:Ljava/lang/String;

.field public prop37:Ljava/lang/String;

.field public prop38:Ljava/lang/String;

.field public prop39:Ljava/lang/String;

.field public prop4:Ljava/lang/String;

.field public prop40:Ljava/lang/String;

.field public prop41:Ljava/lang/String;

.field public prop42:Ljava/lang/String;

.field public prop43:Ljava/lang/String;

.field public prop44:Ljava/lang/String;

.field public prop45:Ljava/lang/String;

.field public prop46:Ljava/lang/String;

.field public prop47:Ljava/lang/String;

.field public prop48:Ljava/lang/String;

.field public prop49:Ljava/lang/String;

.field public prop5:Ljava/lang/String;

.field public prop50:Ljava/lang/String;

.field public prop6:Ljava/lang/String;

.field public prop7:Ljava/lang/String;

.field public prop8:Ljava/lang/String;

.field public prop9:Ljava/lang/String;

.field public purchaseID:Ljava/lang/String;

.field public referrer:Ljava/lang/String;

.field private requiredVarList:[Ljava/lang/String;

.field private resolution:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public ssl:Z

.field public state:Ljava/lang/String;

.field public trackingServer:Ljava/lang/String;

.field public trackingServerSecure:Ljava/lang/String;

.field public transactionID:Ljava/lang/String;

.field public usePlugins:Z

.field public userAgent:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field public visitorID:Ljava/lang/String;

.field public visitorNamespace:Ljava/lang/String;

.field public zip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/omniture/android/AppMeasurement;->singletonInstance:Lcom/omniture/android/AppMeasurement;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 11
    .param p1, "currentApplication"    # Landroid/app/Application;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    move-object v1, p0

    .line 224
    .local v1, "s":Lcom/omniture/android/AppMeasurement;
    iput-object p1, v1, Lcom/omniture/android/AppMeasurement;->application:Landroid/app/Application;

    .line 227
    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    .line 228
    const-string v3, "dynamicVariablePrefix"

    aput-object v3, v2, v6

    .line 229
    const-string v3, "visitorID"

    aput-object v3, v2, v8

    .line 230
    const-string v3, "charSet"

    aput-object v3, v2, v9

    .line 231
    const-string v3, "visitorNamespace"

    aput-object v3, v2, v10

    const/4 v3, 0x4

    .line 232
    const-string v4, "pageName"

    aput-object v4, v2, v3

    .line 233
    const-string v3, "pageURL"

    aput-object v3, v2, v7

    const/4 v3, 0x6

    .line 234
    const-string v4, "referrer"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 235
    const-string v4, "currencyCode"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 236
    const-string v4, "pe"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 237
    const-string v4, "pev1"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 238
    const-string v4, "pev2"

    aput-object v4, v2, v3

    .line 227
    iput-object v2, v1, Lcom/omniture/android/AppMeasurement;->requiredVarList:[Ljava/lang/String;

    .line 242
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/omniture/android/AppMeasurement;->accountVarList:Ljava/util/ArrayList;

    .line 243
    iget-object v2, v1, Lcom/omniture/android/AppMeasurement;->accountVarList:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/omniture/android/AppMeasurement;->requiredVarList:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .end local p0    # "this":Lcom/omniture/android/AppMeasurement;
    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 245
    iget-object v2, v1, Lcom/omniture/android/AppMeasurement;->accountVarList:Ljava/util/ArrayList;

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    .line 246
    const-string v4, "purchaseID"

    aput-object v4, v3, v6

    .line 247
    const-string v4, "channel"

    aput-object v4, v3, v8

    .line 248
    const-string v4, "server"

    aput-object v4, v3, v9

    .line 249
    const-string v4, "pageType"

    aput-object v4, v3, v10

    const/4 v4, 0x4

    .line 250
    const-string v5, "transactionID"

    aput-object v5, v3, v4

    .line 251
    const-string v4, "campaign"

    aput-object v4, v3, v7

    const/4 v4, 0x6

    .line 252
    const-string v5, "state"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 253
    const-string v5, "zip"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 254
    const-string v5, "events"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    .line 255
    const-string v5, "products"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 245
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 258
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-le v0, v7, :cond_1

    .line 262
    const/4 v0, 0x1

    :goto_1
    const/16 v2, 0x32

    if-le v0, v2, :cond_2

    .line 266
    const/4 v0, 0x1

    :goto_2
    const/16 v2, 0x32

    if-le v0, v2, :cond_3

    .line 270
    iget-object v2, v1, Lcom/omniture/android/AppMeasurement;->accountVarList:Ljava/util/ArrayList;

    const-string v3, "resolution"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    .line 274
    const-string v4, "linkURL"

    aput-object v4, v3, v6

    .line 275
    const-string v4, "linkName"

    aput-object v4, v3, v8

    .line 276
    const-string v4, "linkType"

    aput-object v4, v3, v9

    .line 277
    const-string v4, "linkTrackVars"

    aput-object v4, v3, v10

    const/4 v4, 0x4

    .line 278
    const-string v5, "linkTrackEvents"

    aput-object v5, v3, v4

    .line 279
    const-string v4, "dc"

    aput-object v4, v3, v7

    const/4 v4, 0x6

    .line 280
    const-string v5, "trackingServer"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 281
    const-string v5, "trackingServerSecure"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 282
    const-string v5, "userAgent"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 273
    iput-object v2, v1, Lcom/omniture/android/AppMeasurement;->accountConfigList:Ljava/util/ArrayList;

    .line 286
    invoke-direct {v1}, Lcom/omniture/android/AppMeasurement;->setupAccountVars()V

    .line 289
    iput-boolean v6, v1, Lcom/omniture/android/AppMeasurement;->ssl:Z

    .line 290
    iput-boolean v6, v1, Lcom/omniture/android/AppMeasurement;->linkLeaveQueryString:Z

    .line 291
    iput-boolean v6, v1, Lcom/omniture/android/AppMeasurement;->debugTracking:Z

    .line 292
    iput-boolean v6, v1, Lcom/omniture/android/AppMeasurement;->usePlugins:Z

    .line 293
    invoke-direct {v1}, Lcom/omniture/android/AppMeasurement;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/omniture/android/AppMeasurement;->userAgent:Ljava/lang/String;

    .line 294
    invoke-direct {v1}, Lcom/omniture/android/AppMeasurement;->getDefaultVisitorID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/omniture/android/AppMeasurement;->visitorID:Ljava/lang/String;

    .line 295
    invoke-direct {v1}, Lcom/omniture/android/AppMeasurement;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/omniture/android/AppMeasurement;->charSet:Ljava/lang/String;

    .line 297
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/omniture/android/AppMeasurement;->delegate:Lcom/omniture/android/AppMeasurementDelegate;

    .line 298
    const-string v2, "JAN-1.0"

    iput-object v2, v1, Lcom/omniture/android/AppMeasurement;->version:Ljava/lang/String;

    .line 301
    sget-object v2, Lcom/omniture/android/AppMeasurement;->requestList:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    .line 302
    invoke-direct {v1}, Lcom/omniture/android/AppMeasurement;->startRequestProcessor()V

    .line 304
    :cond_0
    return-void

    .line 259
    :cond_1
    iget-object v2, v1, Lcom/omniture/android/AppMeasurement;->accountVarList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hier"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 263
    :cond_2
    iget-object v2, v1, Lcom/omniture/android/AppMeasurement;->accountVarList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "prop"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 267
    :cond_3
    iget-object v2, v1, Lcom/omniture/android/AppMeasurement;->accountVarList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "eVar"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method static synthetic access$0()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/omniture/android/AppMeasurement;->requestList:Ljava/util/LinkedList;

    return-object v0
.end method

.method private escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "unescapedString"    # Ljava/lang/String;

    .prologue
    .line 885
    move-object v1, p0

    .line 888
    .local v1, "s":Lcom/omniture/android/AppMeasurement;
    if-nez p1, :cond_0

    .line 889
    const/4 v2, 0x0

    .line 896
    :goto_0
    return-object v2

    .line 894
    :cond_0
    :try_start_0
    invoke-direct {v1}, Lcom/omniture/android/AppMeasurement;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 895
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 896
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    goto :goto_0
.end method

.method private getAccountVar(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 805
    move-object v2, p0

    .line 806
    .local v2, "s":Lcom/omniture/android/AppMeasurement;
    iget-object v3, v2, Lcom/omniture/android/AppMeasurement;->accountVars:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 808
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/omniture/android/AppMeasurement;
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    .line 810
    :goto_0
    return-object v3

    .line 809
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 810
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getApplicationID()Ljava/lang/String;
    .locals 9

    .prologue
    .line 986
    move-object v6, p0

    .line 989
    .local v6, "s":Lcom/omniture/android/AppMeasurement;
    :try_start_0
    iget-object v7, v6, Lcom/omniture/android/AppMeasurement;->application:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 990
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v7, v6, Lcom/omniture/android/AppMeasurement;->application:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 991
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v6, Lcom/omniture/android/AppMeasurement;->application:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 993
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 994
    .local v1, "applicationName":Ljava/lang/String;
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 996
    .local v2, "applicationVersion":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 998
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationName":Ljava/lang/String;
    .end local v2    # "applicationVersion":Ljava/lang/String;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v7

    .line 997
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 998
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, ""

    goto :goto_0
.end method

.method private getCurrentLocaleID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 978
    move-object v1, p0

    .line 980
    .local v1, "s":Lcom/omniture/android/AppMeasurement;
    iget-object v2, v1, Lcom/omniture/android/AppMeasurement;->application:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 981
    .local v0, "currentLocale":Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getDefaultCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 842
    const-string v0, "UTF-8"

    return-object v0
.end method

.method private getDefaultUserAgent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 955
    move-object v0, p0

    .line 957
    .local v0, "s":Lcom/omniture/android/AppMeasurement;
    const-string v1, "Mozilla/5.0 (Linux; U; Android %s; %s; %s) %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 958
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 959
    invoke-direct {v0}, Lcom/omniture/android/AppMeasurement;->getCurrentLocaleID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 960
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 961
    invoke-direct {v0}, Lcom/omniture/android/AppMeasurement;->getApplicationID()Ljava/lang/String;

    move-result-object v4

    .line 957
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultVisitorID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 966
    move-object v1, p0

    .line 969
    .local v1, "s":Lcom/omniture/android/AppMeasurement;
    :try_start_0
    iget-object v3, v1, Lcom/omniture/android/AppMeasurement;->application:Landroid/app/Application;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 970
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 972
    .end local v2    # "telephony":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v3

    .line 971
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 972
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "000000000000000"

    goto :goto_0
.end method

.method private getFormattedTimestamp()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 827
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 829
    .local v0, "calendar":Ljava/util/Calendar;
    const-string v1, "%d/%d/%d %d:%d:%d %d %d"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 830
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 831
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 832
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    .line 833
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 834
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 835
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x6

    .line 836
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 837
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const v4, 0xea60

    div-int/2addr v3, v4

    mul-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 829
    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/omniture/android/AppMeasurement;
    .locals 1
    .param p0, "currentApplication"    # Landroid/app/Application;

    .prologue
    .line 207
    sget-object v0, Lcom/omniture/android/AppMeasurement;->singletonInstance:Lcom/omniture/android/AppMeasurement;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/omniture/android/AppMeasurement;

    invoke-direct {v0, p0}, Lcom/omniture/android/AppMeasurement;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/omniture/android/AppMeasurement;->singletonInstance:Lcom/omniture/android/AppMeasurement;

    .line 211
    :cond_0
    sget-object v0, Lcom/omniture/android/AppMeasurement;->singletonInstance:Lcom/omniture/android/AppMeasurement;

    return-object v0
.end method

.method private getQueryString()Ljava/lang/String;
    .locals 24

    .prologue
    .line 578
    move-object/from16 v6, p0

    .line 580
    .local v6, "s":Lcom/omniture/android/AppMeasurement;
    const-string v5, ""

    .line 581
    .local v5, "queryString":Ljava/lang/String;
    const/4 v11, 0x0

    .line 582
    .local v11, "varKey":Ljava/lang/String;
    const/16 v16, 0x0

    .line 583
    .local v16, "varValue":Ljava/lang/String;
    const/16 v17, 0x0

    check-cast v17, [Ljava/lang/String;

    .line 584
    .local v17, "varValueParts":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 585
    .local v13, "varPrefix":Ljava/lang/String;
    const/4 v15, 0x0

    .line 586
    .local v15, "varSuffix":Ljava/lang/String;
    const/4 v9, 0x0

    .line 587
    .local v9, "varFilter":Ljava/lang/String;
    const/4 v3, 0x0

    .line 590
    .local v3, "eventFilter":Ljava/lang/String;
    move-object v0, v6

    iget-object v0, v0, Lcom/omniture/android/AppMeasurement;->linkType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 591
    iget-object v9, v6, Lcom/omniture/android/AppMeasurement;->linkTrackVars:Ljava/lang/String;

    .line 592
    iget-object v3, v6, Lcom/omniture/android/AppMeasurement;->linkTrackEvents:Ljava/lang/String;

    .line 595
    :cond_0
    invoke-direct {v6, v9}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 596
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object v7, v0

    const/16 v18, 0x0

    const-string v19, "resolution"

    aput-object v19, v7, v18

    .line 597
    .local v7, "technologyVarList":[Ljava/lang/String;
    const-string v18, ",%s,%s,%s,"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 598
    aput-object v9, v19, v20

    const/16 v20, 0x1

    .line 599
    move-object v0, v6

    iget-object v0, v0, Lcom/omniture/android/AppMeasurement;->requiredVarList:[Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ","

    move-object v0, v6

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/omniture/android/AppMeasurement;->joinArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    .line 600
    const-string v21, ","

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/omniture/android/AppMeasurement;->joinArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 597
    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 602
    .end local v7    # "technologyVarList":[Ljava/lang/String;
    :cond_1
    invoke-direct {v6, v3}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 603
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v19, 0x2c

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2c

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 607
    :cond_2
    const/4 v12, 0x0

    .local v12, "varNum":I
    :goto_0
    move-object v0, v6

    iget-object v0, v0, Lcom/omniture/android/AppMeasurement;->accountVarList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move v0, v12

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 685
    return-object v5

    .line 608
    :cond_3
    move-object v0, v6

    iget-object v0, v0, Lcom/omniture/android/AppMeasurement;->accountVarList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "varKey":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 609
    .restart local v11    # "varKey":Ljava/lang/String;
    invoke-direct {v6, v11}, Lcom/omniture/android/AppMeasurement;->getAccountVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 611
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 612
    const/16 v18, 0x0

    const/16 v19, 0x4

    move-object v0, v11

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 613
    const/16 v18, 0x4

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 619
    :goto_1
    move-object v0, v6

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 622
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v19, 0x2c

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2c

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 623
    .local v10, "varFilterCheck":Ljava/lang/String;
    invoke-direct {v6, v9}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 607
    .end local v10    # "varFilterCheck":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 615
    :cond_5
    const/4 v13, 0x0

    .line 616
    const/4 v15, 0x0

    goto :goto_1

    .line 628
    .restart local v10    # "varFilterCheck":Ljava/lang/String;
    :cond_6
    const-string v18, "dynamicVariablePrefix"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 629
    const-string v11, "D"

    .line 677
    :cond_7
    :goto_3
    move-object v0, v6

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 678
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "&%s=%s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 679
    invoke-direct {v6, v11}, Lcom/omniture/android/AppMeasurement;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    .line 680
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_19

    const/16 v22, 0x0

    const/16 v23, 0x3

    move-object v0, v11

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    const-string v23, "pev"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    move-object/from16 v22, v16

    :goto_4
    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 678
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 630
    :cond_8
    const-string v18, "visitorID"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 631
    const-string v11, "vid"

    goto :goto_3

    .line 632
    :cond_9
    const-string v18, "pageURL"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 633
    const-string v11, "g"

    goto :goto_3

    .line 634
    :cond_a
    const-string v18, "referrer"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 635
    const-string v11, "r"

    goto/16 :goto_3

    .line 636
    :cond_b
    const-string v18, "charSet"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 637
    const-string v11, "ce"

    goto/16 :goto_3

    .line 638
    :cond_c
    const-string v18, "visitorNamespace"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 639
    const-string v11, "ns"

    goto/16 :goto_3

    .line 640
    :cond_d
    const-string v18, "currencyCode"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 641
    const-string v11, "cc"

    goto/16 :goto_3

    .line 642
    :cond_e
    const-string v18, "channel"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 643
    const-string v11, "ch"

    goto/16 :goto_3

    .line 644
    :cond_f
    const-string v18, "transactionID"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 645
    const-string v11, "xact"

    goto/16 :goto_3

    .line 646
    :cond_10
    const-string v18, "campaign"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 647
    const-string v11, "v0"

    goto/16 :goto_3

    .line 648
    :cond_11
    const-string v18, "resolution"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 649
    const-string v11, "s"

    goto/16 :goto_3

    .line 650
    :cond_12
    const-string v18, "events"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 652
    invoke-direct {v6, v3}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 653
    const-string v18, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 654
    const-string v8, ""

    .line 655
    .local v8, "validEvents":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "varSubNum":I
    :goto_5
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move v0, v14

    move/from16 v1, v18

    if-lt v0, v1, :cond_13

    .line 661
    move-object/from16 v16, v8

    goto/16 :goto_3

    .line 656
    :cond_13
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v19, 0x2c

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v19, v17, v14

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2c

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, "eventFilterCheck":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    .line 658
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_15

    const/16 v19, 0x2c

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v19

    :goto_6
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v17, v14

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 655
    :cond_14
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 658
    :cond_15
    const-string v19, ""

    goto :goto_6

    .line 663
    .end local v4    # "eventFilterCheck":Ljava/lang/String;
    .end local v8    # "validEvents":Ljava/lang/String;
    .end local v14    # "varSubNum":I
    :cond_16
    invoke-direct {v6, v15}, Lcom/omniture/android/AppMeasurement;->isNumber(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 664
    const-string v18, "prop"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 665
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v19, 0x63

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 666
    :cond_17
    const-string v18, "eVar"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 667
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v19, 0x76

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 668
    :cond_18
    const-string v18, "hier"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 669
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v19, 0x68

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 670
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0xff

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    .line 671
    const/16 v18, 0x0

    const/16 v19, 0xff

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3

    .line 680
    :cond_19
    move-object v0, v6

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/omniture/android/AppMeasurement;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_4
.end method

.method private handleLinkTracking()V
    .locals 7

    .prologue
    .line 527
    move-object v4, p0

    .line 529
    .local v4, "s":Lcom/omniture/android/AppMeasurement;
    iget-object v1, v4, Lcom/omniture/android/AppMeasurement;->linkType:Ljava/lang/String;

    .line 530
    .local v1, "linkType":Ljava/lang/String;
    iget-object v2, v4, Lcom/omniture/android/AppMeasurement;->linkURL:Ljava/lang/String;

    .line 531
    .local v2, "linkURL":Ljava/lang/String;
    iget-object v0, v4, Lcom/omniture/android/AppMeasurement;->linkName:Ljava/lang/String;

    .line 533
    .local v0, "linkName":Ljava/lang/String;
    invoke-direct {v4, v1}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {v4, v2}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {v4, v0}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 534
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 537
    const-string v5, "d"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "e"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 538
    const-string v1, "o"

    .line 542
    :cond_1
    invoke-direct {v4, v2}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v4, Lcom/omniture/android/AppMeasurement;->linkLeaveQueryString:Z

    if-nez v5, :cond_2

    .line 543
    const/16 v5, 0x3f

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 544
    .local v3, "queryStringStart":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 545
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 550
    .end local v3    # "queryStringStart":I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lnk_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v1}, Lcom/omniture/android/AppMeasurement;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/omniture/android/AppMeasurement;->pe:Ljava/lang/String;

    .line 551
    invoke-direct {v4, v2}, Lcom/omniture/android/AppMeasurement;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/omniture/android/AppMeasurement;->pev1:Ljava/lang/String;

    .line 552
    invoke-direct {v4, v0}, Lcom/omniture/android/AppMeasurement;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/omniture/android/AppMeasurement;->pev2:Ljava/lang/String;

    .line 554
    :cond_3
    return-void
.end method

.method private handleTechnology()V
    .locals 4

    .prologue
    .line 559
    move-object v1, p0

    .line 567
    .local v1, "s":Lcom/omniture/android/AppMeasurement;
    iget-object v2, v1, Lcom/omniture/android/AppMeasurement;->application:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 568
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/omniture/android/AppMeasurement;->resolution:Ljava/lang/String;

    .line 574
    return-void
.end method

.method private isNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 876
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    const/4 v1, 0x1

    .line 879
    :goto_0
    return v1

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSet(Ljava/lang/String;)Z
    .locals 1
    .param p1, "var"    # Ljava/lang/String;

    .prologue
    .line 869
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private joinArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 918
    const-string v1, ""

    .line 919
    .local v1, "joinedValue":Ljava/lang/String;
    const/4 v0, 0x1

    .line 920
    .local v0, "isFirstValue":Z
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    .line 927
    return-object v1

    .line 920
    :cond_0
    aget-object v2, p1, v4

    .line 921
    .local v2, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 922
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 924
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 925
    const/4 v0, 0x0

    .line 920
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 947
    move-object v0, p0

    .line 948
    .local v0, "s":Lcom/omniture/android/AppMeasurement;
    iget-boolean v1, v0, Lcom/omniture/android/AppMeasurement;->debugTracking:Z

    if-eqz v1, :cond_0

    .line 949
    const-string v1, "Omniture App Measurement Debug"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_0
    return-void
.end method

.method private logRequest(Ljava/lang/String;)V
    .locals 8
    .param p1, "requestString"    # Ljava/lang/String;

    .prologue
    .line 932
    move-object v3, p0

    .line 934
    .local v3, "s":Lcom/omniture/android/AppMeasurement;
    move-object v0, p1

    .line 935
    .local v0, "debugString":Ljava/lang/String;
    const-string v4, "&"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 936
    .local v2, "requestComponents":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_0

    .line 940
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\nOmniture App Measurement Debug: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/omniture/android/AppMeasurement;->log(Ljava/lang/String;)V

    .line 941
    return-void

    .line 936
    :cond_0
    aget-object v1, v2, v5

    .line 937
    .local v1, "keyValuePair":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {v3, v1}, Lcom/omniture/android/AppMeasurement;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 936
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private makeRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "cacheBusting"    # Ljava/lang/String;
    .param p2, "queryString"    # Ljava/lang/String;

    .prologue
    .line 690
    move-object v6, p0

    .line 691
    .local v6, "s":Lcom/omniture/android/AppMeasurement;
    iget-object v7, v6, Lcom/omniture/android/AppMeasurement;->trackingServer:Ljava/lang/String;

    .line 692
    .local v7, "trackingServer":Ljava/lang/String;
    iget-object v2, v6, Lcom/omniture/android/AppMeasurement;->visitorNamespace:Ljava/lang/String;

    .line 693
    .local v2, "prefix":Ljava/lang/String;
    iget-object v0, v6, Lcom/omniture/android/AppMeasurement;->dc:Ljava/lang/String;

    .line 696
    .local v0, "dc":Ljava/lang/String;
    invoke-direct {v6, v7}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 699
    invoke-direct {v6, v2}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 700
    iget-object v2, v6, Lcom/omniture/android/AppMeasurement;->account:Ljava/lang/String;

    .line 703
    const/16 v8, 0x2c

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 704
    .local v1, "firstComma":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 705
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 709
    :cond_0
    const/16 v8, 0x5f

    const/16 v9, 0x2d

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2e

    const/16 v10, 0x2d

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 713
    .end local v1    # "firstComma":I
    :cond_1
    invoke-direct {v6, v0}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 714
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 715
    const-string v8, "dc2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "122"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 716
    :cond_2
    const-string v0, "122"

    .line 724
    :goto_0
    const-string v8, "%s.%s.2o7.net"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 725
    aput-object v2, v9, v10

    const/4 v10, 0x1

    .line 724
    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 732
    :cond_3
    :goto_1
    iget-boolean v8, v6, Lcom/omniture/android/AppMeasurement;->ssl:Z

    if-eqz v8, :cond_8

    const-string v8, "https"

    move-object v4, v8

    .line 733
    .local v4, "requestProtocol":Ljava/lang/String;
    :goto_2
    const-string v8, "%s://%s/b/ss/%s/0/%s/%s?AQB=1&ndh=1&%s&AQE=1"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 734
    aput-object v4, v9, v10

    const/4 v10, 0x1

    .line 735
    aput-object v7, v9, v10

    const/4 v10, 0x2

    .line 736
    iget-object v11, v6, Lcom/omniture/android/AppMeasurement;->account:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    .line 737
    iget-object v11, v6, Lcom/omniture/android/AppMeasurement;->version:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    .line 738
    aput-object p1, v9, v10

    const/4 v10, 0x5

    .line 733
    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 740
    .local v5, "requestString":Ljava/lang/String;
    new-instance v3, Lcom/omniture/android/Request;

    iget-object v8, v6, Lcom/omniture/android/AppMeasurement;->userAgent:Ljava/lang/String;

    invoke-direct {v6}, Lcom/omniture/android/AppMeasurement;->getCurrentLocaleID()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, v6, Lcom/omniture/android/AppMeasurement;->ssl:Z

    invoke-direct {v3, v5, v8, v9, v10}, Lcom/omniture/android/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 743
    .local v3, "request":Lcom/omniture/android/Request;
    sget-object v8, Lcom/omniture/android/AppMeasurement;->requestList:Ljava/util/LinkedList;

    monitor-enter v8

    .line 744
    :try_start_0
    sget-object v9, Lcom/omniture/android/AppMeasurement;->requestList:Ljava/util/LinkedList;

    invoke-virtual {v9, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 745
    sget-object v9, Lcom/omniture/android/AppMeasurement;->requestList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    .line 743
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    iget-boolean v8, v6, Lcom/omniture/android/AppMeasurement;->debugTracking:Z

    if-eqz v8, :cond_4

    .line 750
    invoke-direct {v6, v5}, Lcom/omniture/android/AppMeasurement;->logRequest(Ljava/lang/String;)V

    .line 752
    :cond_4
    return-void

    .line 718
    .end local v3    # "request":Lcom/omniture/android/Request;
    .end local v4    # "requestProtocol":Ljava/lang/String;
    .end local v5    # "requestString":Ljava/lang/String;
    :cond_5
    const-string v0, "112"

    goto :goto_0

    .line 721
    :cond_6
    const-string v0, "112"

    goto :goto_0

    .line 727
    :cond_7
    iget-boolean v8, v6, Lcom/omniture/android/AppMeasurement;->ssl:Z

    if-eqz v8, :cond_3

    iget-object v8, v6, Lcom/omniture/android/AppMeasurement;->trackingServerSecure:Ljava/lang/String;

    invoke-direct {v6, v8}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 728
    iget-object v7, v6, Lcom/omniture/android/AppMeasurement;->trackingServerSecure:Ljava/lang/String;

    goto :goto_1

    .line 732
    :cond_8
    const-string v8, "http"

    move-object v4, v8

    goto :goto_2

    .line 743
    .restart local v3    # "request":Lcom/omniture/android/Request;
    .restart local v4    # "requestProtocol":Ljava/lang/String;
    .restart local v5    # "requestString":Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method

.method private setAccountVar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 816
    move-object v1, p0

    .line 817
    .local v1, "s":Lcom/omniture/android/AppMeasurement;
    iget-object v2, v1, Lcom/omniture/android/AppMeasurement;->accountVars:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 819
    .local v0, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_0
    return-void

    .line 820
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setupAccountVars()V
    .locals 8

    .prologue
    .line 782
    move-object v2, p0

    .line 785
    .local v2, "s":Lcom/omniture/android/AppMeasurement;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v2, Lcom/omniture/android/AppMeasurement;->accountVars:Ljava/util/Map;

    .line 788
    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/omniture/android/AppMeasurement;->accountVarList:Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 789
    .local v0, "allAccountVarKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, v2, Lcom/omniture/android/AppMeasurement;->accountConfigList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 790
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 793
    .local v1, "numAllAccountVarKeys":I
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 795
    .local v3, "thisClass":Ljava/lang/Class;
    const/4 v5, 0x0

    .local v5, "varNum":I
    :goto_0
    if-lt v5, v1, :cond_0

    .line 801
    return-void

    .line 797
    :cond_0
    :try_start_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 798
    .local v4, "varKey":Ljava/lang/String;
    iget-object v6, v2, Lcom/omniture/android/AppMeasurement;->accountVars:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    .end local v4    # "varKey":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 799
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private startRequestProcessor()V
    .locals 2

    .prologue
    .line 756
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/omniture/android/AppMeasurement;->requestList:Ljava/util/LinkedList;

    .line 758
    new-instance v0, Lcom/omniture/android/AppMeasurement$1;

    invoke-direct {v0, p0}, Lcom/omniture/android/AppMeasurement$1;-><init>(Lcom/omniture/android/AppMeasurement;)V

    .line 777
    .local v0, "requestProcessor":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 778
    return-void
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "escapedString"    # Ljava/lang/String;

    .prologue
    .line 902
    move-object v1, p0

    .line 905
    .local v1, "s":Lcom/omniture/android/AppMeasurement;
    if-nez p1, :cond_0

    .line 906
    const/4 v2, 0x0

    .line 912
    :goto_0
    return-object v2

    .line 910
    :cond_0
    :try_start_0
    invoke-direct {v1}, Lcom/omniture/android/AppMeasurement;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 911
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 912
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    goto :goto_0
.end method

.method private validateRequiredRequestVariables()V
    .locals 2

    .prologue
    .line 847
    move-object v0, p0

    .line 854
    .local v0, "s":Lcom/omniture/android/AppMeasurement;
    iget-object v1, v0, Lcom/omniture/android/AppMeasurement;->userAgent:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 855
    invoke-direct {v0}, Lcom/omniture/android/AppMeasurement;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/omniture/android/AppMeasurement;->userAgent:Ljava/lang/String;

    .line 858
    :cond_0
    iget-object v1, v0, Lcom/omniture/android/AppMeasurement;->visitorID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 859
    invoke-direct {v0}, Lcom/omniture/android/AppMeasurement;->getDefaultVisitorID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/omniture/android/AppMeasurement;->visitorID:Ljava/lang/String;

    .line 862
    :cond_1
    iget-object v1, v0, Lcom/omniture/android/AppMeasurement;->charSet:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 863
    invoke-direct {v0}, Lcom/omniture/android/AppMeasurement;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/omniture/android/AppMeasurement;->charSet:Ljava/lang/String;

    .line 865
    :cond_2
    return-void
.end method

.method private variableOverridesApply(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "variableOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v7, 0x21

    .line 498
    move-object v2, p0

    .line 500
    .local v2, "s":Lcom/omniture/android/AppMeasurement;
    const/4 v3, 0x0

    .line 501
    .local v3, "varKey":Ljava/lang/String;
    const/4 v0, 0x0

    .line 502
    .local v0, "antiKey":Ljava/lang/String;
    const/4 v1, 0x0

    .line 504
    .local v1, "overrideValue":Ljava/lang/String;
    const/4 v4, 0x0

    .end local p0    # "this":Lcom/omniture/android/AppMeasurement;
    .local v4, "varNum":I
    :goto_0
    iget-object v5, v2, Lcom/omniture/android/AppMeasurement;->accountVarList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 514
    const/4 v4, 0x0

    :goto_1
    iget-object v5, v2, Lcom/omniture/android/AppMeasurement;->accountConfigList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 523
    return-void

    .line 505
    :cond_0
    iget-object v5, v2, Lcom/omniture/android/AppMeasurement;->accountVarList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "varKey":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 506
    .restart local v3    # "varKey":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "overrideValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 507
    .restart local v1    # "overrideValue":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-direct {v2, v1}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v2, p0}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 510
    :cond_1
    invoke-direct {v2, v3, v1}, Lcom/omniture/android/AppMeasurement;->setAccountVar(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 515
    :cond_3
    iget-object v5, v2, Lcom/omniture/android/AppMeasurement;->accountConfigList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "varKey":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 516
    .restart local v3    # "varKey":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "overrideValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 517
    .restart local v1    # "overrideValue":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-direct {v2, v1}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v2, p0}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 520
    :cond_4
    invoke-direct {v2, v3, v1}, Lcom/omniture/android/AppMeasurement;->setAccountVar(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private variableOverridesBuild(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "variableOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p0

    .line 458
    .local v2, "s":Lcom/omniture/android/AppMeasurement;
    const/4 v3, 0x0

    .line 459
    .local v3, "varKey":Ljava/lang/String;
    const/4 v0, 0x0

    .line 460
    .local v0, "antiKey":Ljava/lang/String;
    const/4 v5, 0x0

    .line 461
    .local v5, "varValue":Ljava/lang/String;
    const/4 v1, 0x0

    .line 463
    .local v1, "overrideValue":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "varNum":I
    :goto_0
    iget-object v6, v2, Lcom/omniture/android/AppMeasurement;->accountVarList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_0

    .line 479
    const/4 v4, 0x0

    :goto_1
    iget-object v6, v2, Lcom/omniture/android/AppMeasurement;->accountConfigList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_3

    .line 494
    return-void

    .line 464
    :cond_0
    iget-object v6, v2, Lcom/omniture/android/AppMeasurement;->accountVarList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "varKey":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 465
    .restart local v3    # "varKey":Ljava/lang/String;
    invoke-direct {v2, v3}, Lcom/omniture/android/AppMeasurement;->getAccountVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 466
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "overrideValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 469
    .restart local v1    # "overrideValue":Ljava/lang/String;
    invoke-direct {v2, v1}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 470
    invoke-direct {v2, v5}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 471
    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 473
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "!"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    const-string v6, "1"

    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 480
    :cond_3
    iget-object v6, v2, Lcom/omniture/android/AppMeasurement;->accountConfigList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "varKey":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 481
    .restart local v3    # "varKey":Ljava/lang/String;
    invoke-direct {v2, v3}, Lcom/omniture/android/AppMeasurement;->getAccountVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 482
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "overrideValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 485
    .restart local v1    # "overrideValue":Ljava/lang/String;
    invoke-direct {v2, v1}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 486
    invoke-direct {v2, v5}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 487
    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 489
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "!"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    const-string v6, "1"

    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method


# virtual methods
.method public clearVars()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 420
    move-object v1, p0

    .line 421
    .local v1, "s":Lcom/omniture/android/AppMeasurement;
    const/4 v2, 0x0

    .line 422
    .local v2, "varKey":Ljava/lang/String;
    const/4 v3, 0x0

    .line 424
    .local v3, "varPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, v1, Lcom/omniture/android/AppMeasurement;->accountVarList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 450
    return-void

    .line 425
    :cond_0
    iget-object v4, v1, Lcom/omniture/android/AppMeasurement;->accountVarList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "varKey":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 428
    .restart local v2    # "varKey":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_3

    .line 429
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 435
    :goto_1
    const-string v4, "channel"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 436
    const-string v4, "events"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 437
    const-string v4, "purchaseID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 438
    const-string v4, "transactionID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 439
    const-string v4, "products"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 440
    const-string v4, "state"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 441
    const-string v4, "zip"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 442
    const-string v4, "campaign"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 443
    const-string v4, "prop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 444
    const-string v4, "eVar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 445
    const-string v4, "hier"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 447
    :cond_1
    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/omniture/android/AppMeasurement;->setAccountVar(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_3
    const-string v3, ""

    goto :goto_1
.end method

.method public track()V
    .locals 2

    .prologue
    .line 314
    move-object v0, p0

    .line 315
    .local v0, "s":Lcom/omniture/android/AppMeasurement;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/omniture/android/AppMeasurement;->track(Ljava/util/Map;)V

    .line 316
    return-void
.end method

.method public track(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "variableOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 327
    move-object v2, p0

    .line 329
    .local v2, "s":Lcom/omniture/android/AppMeasurement;
    invoke-direct {v2}, Lcom/omniture/android/AppMeasurement;->validateRequiredRequestVariables()V

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "s"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x4197d78400000000L

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "cacheBusting":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "t="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v2}, Lcom/omniture/android/AppMeasurement;->getFormattedTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/omniture/android/AppMeasurement;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "queryString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 339
    .local v3, "variableOverridesBackup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 340
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "variableOverridesBackup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 341
    .restart local v3    # "variableOverridesBackup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2, v3}, Lcom/omniture/android/AppMeasurement;->variableOverridesBuild(Ljava/util/Map;)V

    .line 342
    invoke-direct {v2, p1}, Lcom/omniture/android/AppMeasurement;->variableOverridesApply(Ljava/util/Map;)V

    .line 346
    :cond_0
    iget-boolean v4, v2, Lcom/omniture/android/AppMeasurement;->usePlugins:Z

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/omniture/android/AppMeasurement;->delegate:Lcom/omniture/android/AppMeasurementDelegate;

    if-eqz v4, :cond_1

    .line 347
    iget-object v4, v2, Lcom/omniture/android/AppMeasurement;->delegate:Lcom/omniture/android/AppMeasurementDelegate;

    invoke-interface {v4, v2}, Lcom/omniture/android/AppMeasurementDelegate;->doPlugins(Lcom/omniture/android/AppMeasurement;)V

    .line 351
    :cond_1
    iget-object v4, v2, Lcom/omniture/android/AppMeasurement;->account:Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/omniture/android/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 352
    invoke-direct {v2}, Lcom/omniture/android/AppMeasurement;->handleLinkTracking()V

    .line 353
    invoke-direct {v2}, Lcom/omniture/android/AppMeasurement;->handleTechnology()V

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v2}, Lcom/omniture/android/AppMeasurement;->getQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-direct {v2, v0, v1}, Lcom/omniture/android/AppMeasurement;->makeRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_2
    if-eqz p1, :cond_3

    .line 360
    invoke-direct {v2, v3}, Lcom/omniture/android/AppMeasurement;->variableOverridesApply(Ljava/util/Map;)V

    .line 364
    :cond_3
    iput-object v9, v2, Lcom/omniture/android/AppMeasurement;->referrer:Ljava/lang/String;

    .line 365
    iput-object v9, v2, Lcom/omniture/android/AppMeasurement;->pe:Ljava/lang/String;

    .line 366
    iput-object v9, v2, Lcom/omniture/android/AppMeasurement;->pev1:Ljava/lang/String;

    .line 367
    iput-object v9, v2, Lcom/omniture/android/AppMeasurement;->pev2:Ljava/lang/String;

    .line 368
    iput-object v9, v2, Lcom/omniture/android/AppMeasurement;->linkURL:Ljava/lang/String;

    .line 369
    iput-object v9, v2, Lcom/omniture/android/AppMeasurement;->linkName:Ljava/lang/String;

    .line 370
    iput-object v9, v2, Lcom/omniture/android/AppMeasurement;->linkType:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "linkURL"    # Ljava/lang/String;
    .param p2, "linkType"    # Ljava/lang/String;
    .param p3, "linkName"    # Ljava/lang/String;

    .prologue
    .line 384
    move-object v0, p0

    .line 386
    .local v0, "s":Lcom/omniture/android/AppMeasurement;
    iput-object p1, v0, Lcom/omniture/android/AppMeasurement;->linkURL:Ljava/lang/String;

    .line 387
    iput-object p2, v0, Lcom/omniture/android/AppMeasurement;->linkType:Ljava/lang/String;

    .line 388
    iput-object p3, v0, Lcom/omniture/android/AppMeasurement;->linkName:Ljava/lang/String;

    .line 390
    invoke-virtual {v0}, Lcom/omniture/android/AppMeasurement;->track()V

    .line 391
    return-void
.end method

.method public trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "linkURL"    # Ljava/lang/String;
    .param p2, "linkType"    # Ljava/lang/String;
    .param p3, "linkName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p4, "variableOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    .line 407
    .local v0, "s":Lcom/omniture/android/AppMeasurement;
    iput-object p1, v0, Lcom/omniture/android/AppMeasurement;->linkURL:Ljava/lang/String;

    .line 408
    iput-object p2, v0, Lcom/omniture/android/AppMeasurement;->linkType:Ljava/lang/String;

    .line 409
    iput-object p3, v0, Lcom/omniture/android/AppMeasurement;->linkName:Ljava/lang/String;

    .line 411
    invoke-virtual {v0, p4}, Lcom/omniture/android/AppMeasurement;->track(Ljava/util/Map;)V

    .line 412
    return-void
.end method

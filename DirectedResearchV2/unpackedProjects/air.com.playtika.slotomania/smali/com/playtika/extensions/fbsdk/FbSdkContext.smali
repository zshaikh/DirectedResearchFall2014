.class public Lcom/playtika/extensions/fbsdk/FbSdkContext;
.super Lcom/adobe/fre/FREContext;
.source "FbSdkContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkDialogListener;,
        Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkFqlRequestListener;,
        Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;,
        Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;,
        Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkUserRequestListener;,
        Lcom/playtika/extensions/fbsdk/FbSdkContext$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$playtika$extensions$fbsdk$FbSdkContext$State:[I = null

.field public static final CODE_APP_NOT_AUTHORIZED:I = 0xbe

.field public static final CODE_FACEBOOK_IS_UNAVAILABLE:I = 0x2746

.field public static final CODE_USER_CANCELED_THE_DIALOG:I = 0x1069

.field public static final EXTRA_CBID:Ljava/lang/String; = "cbid"

.field public static final EXTRA_EXTEND_PERMISSIONS:Ljava/lang/String; = "achievedPermissions"

.field public static final EXTRA_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final GRAPHPATH_RESPONSE_TAG:Ljava/lang/String; = "GraphPath response"

.field private static final PUBLISH_PERMISSIONS:Ljava/lang/String; = "publish_actions"

.field private static final USER_CANCELED_LOG_IN:Ljava/lang/String; = "User canceled log in."

.field private static final USER_DENIED_THE_APP:Ljava/lang/String; = "The user denied the app"

.field static debugDump:Ljava/lang/String;

.field public static initialized:Z

.field private static volatile instance:Lcom/playtika/extensions/fbsdk/FbSdkContext;


# instance fields
.field private appId:Ljava/lang/String;

.field public appUserId:Ljava/lang/String;

.field private currentState:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

.field private dialogParams:Landroid/os/Bundle;

.field private generalCallback:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;

.field private publishTask:Lcom/facebook/RequestAsyncTask;

.field private session:Lcom/facebook/Session;

.field private sessionLoginBehavior:Lcom/facebook/SessionLoginBehavior;


# direct methods
.method static synthetic $SWITCH_TABLE$com$playtika$extensions$fbsdk$FbSdkContext$State()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->$SWITCH_TABLE$com$playtika$extensions$fbsdk$FbSdkContext$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->values()[Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->AUTHORIZE:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    invoke-virtual {v1}, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->NONE:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    invoke-virtual {v1}, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->UPDATE_PERMISSIONS_FOR_DIALOG:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    invoke-virtual {v1}, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->UPDATE_PERMISSIONS_FOR_REQUEST:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    invoke-virtual {v1}, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->UPDATE_PERMISSIONS_FROM_AS:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    invoke-virtual {v1}, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->$SWITCH_TABLE$com$playtika$extensions$fbsdk$FbSdkContext$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->initialized:Z

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->debugDump:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->appUserId:Ljava/lang/String;

    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->initialized:Z

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0, p1, p2, p3}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0, p1, p2}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorJSONToAS(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0, p1, p2}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushSuccessToAS(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/playtika/extensions/fbsdk/FbSdkContext;Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;ZLjava/lang/String;Ljava/util/List;Lcom/playtika/extensions/fbsdk/FbSdkContext$State;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct/range {p0 .. p6}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->authorizeFinish(Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;ZLjava/lang/String;Ljava/util/List;Lcom/playtika/extensions/fbsdk/FbSdkContext$State;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$4(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0, p1, p2}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushSuccessToAS(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private authorizeFinish(Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;ZLjava/lang/String;Ljava/util/List;Lcom/playtika/extensions/fbsdk/FbSdkContext$State;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "activity"    # Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;
    .param p2, "success"    # Z
    .param p3, "cbid"    # Ljava/lang/String;
    .param p5, "state"    # Lcom/playtika/extensions/fbsdk/FbSdkContext$State;
    .param p6, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/playtika/extensions/fbsdk/FbSdkContext$State;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 178
    const-string v0, "authorizeFinish"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->$SWITCH_TABLE$com$playtika$extensions$fbsdk$FbSdkContext$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->currentState:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    invoke-virtual {v1}, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 199
    invoke-virtual {p1, p2, v5, v3}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->finish(ZZLjava/lang/Throwable;)V

    .line 202
    :cond_0
    :goto_0
    sget-object v0, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->NONE:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    iput-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->currentState:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    .line 203
    return-void

    .line 182
    :pswitch_0
    invoke-virtual {p1, p2, v5, p6}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->finish(ZZLjava/lang/Throwable;)V

    goto :goto_0

    .line 185
    :pswitch_1
    invoke-virtual {p1, p2, v4, v3}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->finish(ZZLjava/lang/Throwable;)V

    .line 186
    invoke-virtual {p0, p3}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->showDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :pswitch_2
    invoke-virtual {p1, p2, v4, v3}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->finish(ZZLjava/lang/Throwable;)V

    .line 190
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->publishTask:Lcom/facebook/RequestAsyncTask;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->publishTask:Lcom/facebook/RequestAsyncTask;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 192
    iput-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->publishTask:Lcom/facebook/RequestAsyncTask;

    goto :goto_0

    .line 196
    :pswitch_3
    invoke-virtual {p1, p2, v5, v3}, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;->finish(ZZLjava/lang/Throwable;)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getInstance()Lcom/playtika/extensions/fbsdk/FbSdkContext;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->instance:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    return-object v0
.end method

.method private pushCancelToAS(Ljava/lang/String;)V
    .locals 3
    .param p1, "cbid"    # Ljava/lang/String;

    .prologue
    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"type\":\"CANCEL\",\"id\":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "header":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method private pushErrorJSONToAS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "cbid"    # Ljava/lang/String;
    .param p2, "errorJSON"    # Ljava/lang/String;

    .prologue
    .line 454
    move-object v0, p2

    .line 457
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 458
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "json":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 459
    .restart local v3    # "json":Lorg/json/JSONObject;
    const-string v4, "type"

    const-string v5, "ERROR_JSON"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    const-string v4, "id"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 461
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 467
    .end local v3    # "json":Lorg/json/JSONObject;
    .local v2, "header":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return-void

    .line 462
    .end local v2    # "header":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 463
    .local v1, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{\"type\":\"ERROR_JSON\",\"id\":"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 464
    .restart local v2    # "header":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{\"error\":{\"code\":"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\"message\":\"\"}}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "cbid"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 428
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 430
    .local v4, "json":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 431
    .local v2, "error":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v2, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 432
    const-string v5, "message"

    invoke-virtual {v2, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    const-string v5, "error"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "data":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    .end local v4    # "json":Lorg/json/JSONObject;
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 438
    .restart local v4    # "json":Lorg/json/JSONObject;
    const-string v5, "type"

    const-string v6, "ERROR_JSON"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    const-string v5, "id"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 440
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 446
    .end local v2    # "error":Lorg/json/JSONObject;
    .end local v4    # "json":Lorg/json/JSONObject;
    .local v3, "header":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void

    .line 441
    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "header":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 442
    .local v1, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{\"type\":\"ERROR_JSON\",\"id\":"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 443
    .restart local v3    # "header":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{\"error\":{\"code\":"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\"message\":\"\"}}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "data":Ljava/lang/String;
    goto :goto_0
.end method

.method private pushErrorToAS(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "cbid"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 472
    const-string v0, "Unknown Facebook Error"

    .line 473
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 476
    :cond_0
    const-string v1, "pushErrorToAS"

    invoke-static {p2, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 478
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V

    .line 479
    return-void
.end method

.method private pushSuccessToAS(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "cbid"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 389
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 390
    .local v3, "json":Lorg/json/JSONObject;
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 391
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 392
    .local v2, "iterate":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 397
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 403
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushSuccessToAS(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "iterate":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 393
    .restart local v2    # "iterate":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 394
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 398
    .end local v2    # "iterate":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 399
    .local v1, "e":Lorg/json/JSONException;
    invoke-direct {p0, p1, v1}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private pushSuccessToAS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "cbid"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 411
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 412
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "type"

    const-string v4, "SUCCESS_JSON"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    const-string v3, "id"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 414
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 420
    .local v1, "header":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .end local v1    # "header":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 416
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, p1, v0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public askForPublishPermissions(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "cbid"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    const-string v4, "askForPublishPermissions"

    .line 263
    const-string v2, "askForPublishPermissions"

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "permissions"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v2, "cbid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v2, "achievedPermissions"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 277
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 272
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "session = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " isOpened = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    :goto_1
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "askForPublishPermissions"

    invoke-static {v0, v4}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 275
    const-string v2, "smth wrong with asking publish permissions"

    invoke-direct {p0, p1, v2}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorJSONToAS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method public authorize(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "cbid"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 130
    const-string v1, "FBManager.authorize"

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "permissions"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "cbid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v1, "achievedPermissions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method public authorizeCallback(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 157
    const-string v0, "FBManager.authorizeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resultCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 160
    return-void
.end method

.method public authorizeWithActivity(Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;
    .param p2, "cbid"    # Ljava/lang/String;
    .param p3, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 140
    const-string v1, "FBManager.authorize with activity"

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v1, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->AUTHORIZE:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    iput-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->currentState:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    .line 143
    new-instance v1, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->currentState:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;-><init>(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;Lcom/playtika/extensions/fbsdk/FbSdkContext$State;)V

    iput-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->generalCallback:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;

    .line 145
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 146
    .local v0, "open":Lcom/facebook/Session$OpenRequest;
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 147
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->sessionLoginBehavior:Lcom/facebook/SessionLoginBehavior;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->sessionLoginBehavior:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    .line 151
    :cond_0
    new-instance v1, Lcom/facebook/Session$Builder;

    invoke-direct {v1, p1}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v1

    iput-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    .line 152
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->generalCallback:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 153
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v1, v0}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 154
    return-void
.end method

.method public dialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "cbid"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "jsonParam"    # Ljava/lang/String;

    .prologue
    const-string v8, "publish_actions"

    .line 206
    const-string v5, "dialog"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "params - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " action - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v4, "params":Landroid/os/Bundle;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 212
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 216
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 224
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    iput-object v4, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->dialogParams:Landroid/os/Bundle;

    .line 225
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v5}, Lcom/facebook/Session;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 226
    const/16 v5, 0xbe

    const-string v6, "Session is closed."

    invoke-direct {p0, p1, v5, v6}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    :goto_2
    return-void

    .line 217
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 218
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 220
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v5}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v5

    const-string v6, "publish_actions"

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 228
    sget-object v5, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->UPDATE_PERMISSIONS_FOR_DIALOG:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    iput-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->currentState:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    .line 229
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "publish_actions"

    aput-object v8, v5, v6

    invoke-virtual {p0, p1, v5}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->askForPublishPermissions(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 232
    :cond_3
    invoke-virtual {p0, p1}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->showDialog(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public getAccessExpires()Ljava/lang/String;
    .locals 4

    .prologue
    .line 317
    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v3}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 318
    .local v0, "access_expires":J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "access_expires_str":Ljava/lang/String;
    return-object v2
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 381
    :goto_0
    return-object v0

    .line 379
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    sput-object p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->instance:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "init"

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkInitFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/fbsdk/FbSdkInitFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "authorize"

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkAuthorizeFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/fbsdk/FbSdkAuthorizeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "logout"

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkLogoutFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/fbsdk/FbSdkLogoutFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "request"

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkRequestFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/fbsdk/FbSdkRequestFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "graphpath"

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkGraphPathFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/fbsdk/FbSdkGraphPathFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "dialog"

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkDialogFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/fbsdk/FbSdkDialogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "getAccessToken"

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkGetAccessTokenFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/fbsdk/FbSdkGetAccessTokenFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "getAccessExpires"

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkGetAccessExpiresFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/fbsdk/FbSdkGetAccessExpiresFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "getStepsDump"

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkGetStepsDumpFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/fbsdk/FbSdkGetStepsDumpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "getLinkParameter"

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkGetCouponLinkParameterFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/fbsdk/FbSdkGetCouponLinkParameterFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "getCurrentPermissions"

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkGetCurrentPermissionsFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/fbsdk/FbSdkGetCurrentPermissionsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "requestNewPermissions"

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkRequestNewPermissionsFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/fbsdk/FbSdkRequestNewPermissionsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "setLoggingFacility"

    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkLoggerSetLoggingFacilityFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/fbsdk/FbSdkLoggerSetLoggingFacilityFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-object v0
.end method

.method public getLinkParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "parametr"    # Ljava/lang/String;

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 781
    :cond_0
    const/4 v1, 0x0

    .line 784
    :goto_0
    return-object v1

    .line 783
    :cond_1
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    move-object v1, v0

    .line 784
    goto :goto_0
.end method

.method public graphpath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "cbid"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "jsonParam"    # Ljava/lang/String;
    .param p5, "httpMethod"    # Ljava/lang/String;

    .prologue
    .line 323
    const-string v4, "graphpath"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "path: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 328
    .local v6, "params":Landroid/os/Bundle;
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 329
    const-string v4, "method"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 335
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    move-object v0, v15

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 337
    .local v15, "json":Lorg/json/JSONObject;
    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .line 339
    .local v14, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    .line 350
    .end local v14    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "json":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    if-nez p2, :cond_3

    .line 351
    const-string v4, "q"

    const-string v5, "query"

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v4, "query"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 353
    const-string v4, "method"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 354
    new-instance v3, Lcom/facebook/Request;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    move-object v4, v0

    const-string v5, "/fql"

    sget-object v7, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v8, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkFqlRequestListener;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkFqlRequestListener;-><init>(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;)V

    invoke-direct/range {v3 .. v8}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 355
    .local v3, "req":Lcom/facebook/Request;
    new-instance v17, Lcom/facebook/RequestAsyncTask;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/facebook/Request;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 370
    .end local v3    # "req":Lcom/facebook/Request;
    .local v17, "task":Lcom/facebook/RequestAsyncTask;
    :goto_2
    const-string v4, "graphpath task.execute()"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "task "

    .end local v6    # "params":Landroid/os/Bundle;
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/facebook/RequestAsyncTask;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 372
    .end local v17    # "task":Lcom/facebook/RequestAsyncTask;
    :goto_3
    return-void

    .line 340
    .restart local v6    # "params":Landroid/os/Bundle;
    .restart local v14    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v15    # "json":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 341
    .local v16, "key":Ljava/lang/String;
    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v6

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 343
    .end local v14    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "json":Lorg/json/JSONObject;
    .end local v16    # "key":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v13, v4

    .line 344
    .local v13, "e":Ljava/lang/Exception;
    const-string v4, "graphpath"

    invoke-static {v13, v4}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 357
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "me/feed"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v4

    const-string v5, "publish_actions"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 358
    new-instance v4, Lcom/facebook/RequestAsyncTask;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/facebook/Request;

    const/4 v13, 0x0

    new-instance v7, Lcom/facebook/Request;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    move-object v8, v0

    .line 359
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 358
    invoke-static {v9}, Lcom/facebook/HttpMethod;->valueOf(Ljava/lang/String;)Lcom/facebook/HttpMethod;

    move-result-object v11

    .line 359
    new-instance v12, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;-><init>(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;)V

    move-object/from16 v9, p2

    move-object v10, v6

    invoke-direct/range {v7 .. v12}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    aput-object v7, v5, v13

    invoke-direct {v4, v5}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 358
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/playtika/extensions/fbsdk/FbSdkContext;->publishTask:Lcom/facebook/RequestAsyncTask;

    .line 360
    sget-object v4, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->UPDATE_PERMISSIONS_FOR_REQUEST:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/playtika/extensions/fbsdk/FbSdkContext;->currentState:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    .line 361
    const-string v4, "graphpath path == null"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "publishTask = "

    .end local v6    # "params":Landroid/os/Bundle;
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->publishTask:Lcom/facebook/RequestAsyncTask;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/facebook/RequestAsyncTask;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "publish_actions"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->askForPublishPermissions(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_3

    .line 366
    .restart local v6    # "params":Landroid/os/Bundle;
    :cond_4
    new-instance v17, Lcom/facebook/RequestAsyncTask;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/facebook/Request;

    const/4 v5, 0x0

    new-instance v7, Lcom/facebook/Request;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    move-object v8, v0

    .line 367
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/HttpMethod;->valueOf(Ljava/lang/String;)Lcom/facebook/HttpMethod;

    move-result-object v11

    new-instance v12, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkGraphPathRequestListener;-><init>(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;)V

    move-object/from16 v9, p2

    move-object v10, v6

    invoke-direct/range {v7 .. v12}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 366
    aput-object v7, v4, v5

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .restart local v17    # "task":Lcom/facebook/RequestAsyncTask;
    goto/16 :goto_2
.end method

.method public initFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "access_token"    # Ljava/lang/String;
    .param p3, "access_expires"    # Ljava/lang/String;
    .param p4, "supressSSO"    # Z

    .prologue
    .line 119
    const-string v0, "init"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "supressSSO = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->setAppId(Ljava/lang/String;)V

    .line 122
    if-eqz p4, :cond_0

    .line 123
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->sessionLoginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->sessionLoginBehavior:Lcom/facebook/SessionLoginBehavior;

    goto :goto_0
.end method

.method public logout(Ljava/lang/String;)V
    .locals 5
    .param p1, "cbid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 302
    const-string v1, "FBManager.logout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v0, Lcom/facebook/RequestAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/Request;

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    new-instance v3, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkUserRequestListener;

    invoke-direct {v3, p0, p1}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkUserRequestListener;-><init>(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 304
    .local v0, "task":Lcom/facebook/RequestAsyncTask;
    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 306
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    if-nez v1, :cond_0

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    goto :goto_0
.end method

.method public onActivityDestroy(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "cbid"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string v0, "FBManager.onActivityDestroy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "success = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz p1, :cond_0

    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p2, v0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushSuccessToAS(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 174
    :goto_0
    return-void

    .line 167
    :cond_0
    const-string v0, "User canceled log in."

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    const-string v0, "The user denied the app"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->currentState:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    sget-object v1, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->AUTHORIZE:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    invoke-virtual {v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    :cond_1
    const/16 v0, 0x1069

    invoke-direct {p0, p2, v0, p3}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public requestNewPermissions(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "cbid"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 251
    sget-object v1, Lcom/playtika/extensions/fbsdk/FbSdkContext$State;->UPDATE_PERMISSIONS_FROM_AS:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    iput-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->currentState:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    .line 252
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->askForPublishPermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "session = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " isOpened = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "askForPublishPermissions"

    invoke-static {v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 258
    const-string v1, "smth wrong with asking publish permissions"

    invoke-direct {p0, p1, v1}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorJSONToAS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->appId:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public showDialog(Ljava/lang/String;)V
    .locals 6
    .param p1, "cbid"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$RequestsDialogBuilder;

    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->dialogParams:Landroid/os/Bundle;

    invoke-direct {v2, v3, v4, v5}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$RequestsDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 239
    invoke-virtual {v2}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$RequestsDialogBuilder;->build()Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    move-result-object v0

    .line 240
    .local v0, "dialog":Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;
    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkDialogListener;

    invoke-direct {v2, p0, p1}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkDialogListener;-><init>(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->setOnCompleteListener(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;)V

    .line 241
    invoke-virtual {v0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->show()V

    .line 248
    .end local v0    # "dialog":Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;
    :goto_0
    return-void

    .line 243
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "session not isOpened"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "showDialog"

    invoke-static {v1, v2}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 246
    const/4 v2, 0x0

    const-string v3, "Session closed"

    invoke-direct {p0, p1, v2, v3}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public updateSessionPermissions(Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;
    .param p2, "cbid"    # Ljava/lang/String;
    .param p3, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 280
    const-string v2, "FBManager.updatePermissions"

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    iget-object v2, v2, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-nez v2, :cond_2

    .line 282
    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->generalCallback:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->generalCallback:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;

    invoke-virtual {v2, v3}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 286
    :cond_0
    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 287
    .local v1, "request":Lcom/facebook/Session$NewPermissionsRequest;
    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->sessionLoginBehavior:Lcom/facebook/SessionLoginBehavior;

    if-eqz v2, :cond_1

    .line 288
    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->sessionLoginBehavior:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$NewPermissionsRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$NewPermissionsRequest;

    .line 290
    :cond_1
    new-instance v2, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;

    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->currentState:Lcom/playtika/extensions/fbsdk/FbSdkContext$State;

    invoke-direct {v2, p0, p2, p1, v3}, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;-><init>(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;Lcom/playtika/extensions/fbsdk/FbSdkAuthActivity;Lcom/playtika/extensions/fbsdk/FbSdkContext$State;)V

    iput-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->generalCallback:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;

    .line 292
    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->generalCallback:Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkStatusCallback;

    invoke-virtual {v2, v3}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 293
    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v2, v1}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    .line 299
    .end local v1    # "request":Lcom/facebook/Session$NewPermissionsRequest;
    :goto_0
    return-void

    .line 295
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "session = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " isOpened = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pendingRequest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext;->session:Lcom/facebook/Session;

    iget-object v3, v3, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "updateSessionPermissions"

    invoke-static {v0, v2}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 297
    const-string v2, "Updating session permissions when session is closed or not initialized or has a pending request."

    invoke-direct {p0, p2, v2}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorJSONToAS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v2, ""

    goto :goto_1
.end method

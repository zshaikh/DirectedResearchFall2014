.class public Lcom/nativex/common/ExternalTrackingManager;
.super Ljava/lang/Object;
.source "ExternalTrackingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/common/ExternalTrackingManager$DebugListener;,
        Lcom/nativex/common/ExternalTrackingManager$ExternalTrackingHandler;
    }
.end annotation


# static fields
.field public static final DAY_MILLIS:J = 0x5265c00L

.field public static final EXTERNAL_TRACKING_ENABLED_IN_SDK:Z = true

.field public static final EXTERNAL_TRACKING_SLEEP_DURATION:J = 0x0L

.field public static final GUID:Ljava/lang/String; = "f4eef032-7c6a-4ab7-b851-78231cf87859"

.field private static final MSG_TRACK:I = 0x51acf

.field private static instance:Lcom/nativex/common/ExternalTrackingManager;

.field private static listener:Lcom/nativex/common/ExternalTrackingManager$DebugListener;


# instance fields
.field private currency:Ljava/lang/String;

.field private enabled:Z

.field private externalTracker:Lcom/kochava/android/tracker/Feature;

.field private firstRunTime:J

.field private handler:Landroid/os/Handler;

.field private partnerId:Ljava/lang/String;

.field private partnerName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nativex/common/ExternalTrackingManager;->enabled:Z

    .line 49
    sput-object p0, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/nativex/common/ExternalTrackingManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nativex/common/ExternalTrackingManager$1;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nativex/common/ExternalTrackingManager;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/nativex/common/ExternalTrackingManager;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nativex/common/ExternalTrackingManager;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/nativex/common/ExternalTrackingManager;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/nativex/common/ExternalTrackingManager;->handler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 33
    invoke-static {}, Lcom/nativex/common/ExternalTrackingManager;->track()V

    return-void
.end method

.method public static createHandler(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    new-instance v0, Lcom/nativex/common/ExternalTrackingManager$1;

    invoke-direct {v0}, Lcom/nativex/common/ExternalTrackingManager$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method private createInputs()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 103
    .local v0, "inputMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "partner_id"

    iget-object v2, p0, Lcom/nativex/common/ExternalTrackingManager;->partnerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "partner_name"

    iget-object v2, p0, Lcom/nativex/common/ExternalTrackingManager;->partnerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "currency"

    iget-object v2, p0, Lcom/nativex/common/ExternalTrackingManager;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object v0
.end method

.method private static fireListener(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 179
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->listener:Lcom/nativex/common/ExternalTrackingManager$DebugListener;

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->listener:Lcom/nativex/common/ExternalTrackingManager$DebugListener;

    invoke-interface {v0, p0}, Lcom/nativex/common/ExternalTrackingManager$DebugListener;->callback(Ljava/lang/String;)V

    .line 182
    :cond_0
    return-void
.end method

.method public static initialize(ILcom/nativex/monetization/business/SessionResponseData;)V
    .locals 3
    .param p0, "appId"    # I
    .param p1, "sessionResponse"    # Lcom/nativex/monetization/business/SessionResponseData;

    .prologue
    .line 69
    :try_start_0
    sget-object v1, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/nativex/common/ExternalTrackingManager;

    invoke-direct {v1}, Lcom/nativex/common/ExternalTrackingManager;-><init>()V

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/nativex/monetization/business/SessionResponseData;->isFirstRun()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    sget-object v1, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    invoke-direct {v1}, Lcom/nativex/common/ExternalTrackingManager;->storeStartDate()V

    .line 77
    :goto_0
    sget-object v1, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    invoke-virtual {p1}, Lcom/nativex/monetization/business/SessionResponseData;->getExternalTrackingTimeout()Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nativex/common/ExternalTrackingManager;->setEnabled(Ljava/lang/Long;)Z

    .line 78
    sget-object v1, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nativex/common/ExternalTrackingManager;->partnerId:Ljava/lang/String;

    .line 79
    sget-object v1, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    const-string v2, "nativex"

    iput-object v2, v1, Lcom/nativex/common/ExternalTrackingManager;->partnerName:Ljava/lang/String;

    .line 80
    sget-object v1, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    const-string v2, "USD"

    iput-object v2, v1, Lcom/nativex/common/ExternalTrackingManager;->currency:Ljava/lang/String;

    .line 87
    :goto_1
    return-void

    .line 75
    :cond_1
    sget-object v1, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    invoke-direct {v1}, Lcom/nativex/common/ExternalTrackingManager;->loadStartDate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/nativex/common/ExternalTrackingManager;->release()V

    .line 83
    const-string v1, "Failed to initialize"

    invoke-static {v1}, Lcom/nativex/common/ExternalTrackingManager;->fireListener(Ljava/lang/String;)V

    .line 84
    const-string v1, "ExternalTracking: Exception caugh while initializing"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static isEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    if-eqz v0, :cond_1

    .line 153
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    iget-boolean v0, v0, Lcom/nativex/common/ExternalTrackingManager;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 153
    goto :goto_0

    :cond_1
    move v0, v1

    .line 155
    goto :goto_0
.end method

.method private loadStartDate()V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/SharedPreferenceManager;->initialize(Landroid/content/Context;)V

    .line 118
    :cond_0
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->loadExternalTrackingDeviceDate()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/nativex/common/ExternalTrackingManager;->firstRunTime:J

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_1
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    const-wide/16 v1, -0x4

    iput-wide v1, v0, Lcom/nativex/common/ExternalTrackingManager;->firstRunTime:J

    goto :goto_0
.end method

.method public static release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    iput-object v1, v0, Lcom/nativex/common/ExternalTrackingManager;->handler:Landroid/os/Handler;

    .line 161
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    iget-object v0, v0, Lcom/nativex/common/ExternalTrackingManager;->externalTracker:Lcom/kochava/android/tracker/Feature;

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    iget-object v0, v0, Lcom/nativex/common/ExternalTrackingManager;->externalTracker:Lcom/kochava/android/tracker/Feature;

    invoke-virtual {v0}, Lcom/kochava/android/tracker/Feature;->endSession()V

    .line 165
    :cond_0
    sput-object v1, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    .line 166
    return-void
.end method

.method public static setDebugListener(Lcom/nativex/common/ExternalTrackingManager$DebugListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/nativex/common/ExternalTrackingManager$DebugListener;

    .prologue
    .line 200
    sput-object p0, Lcom/nativex/common/ExternalTrackingManager;->listener:Lcom/nativex/common/ExternalTrackingManager$DebugListener;

    .line 201
    return-void
.end method

.method private setEnabled(Ljava/lang/Long;)Z
    .locals 11
    .param p1, "timeout"    # Ljava/lang/Long;

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 136
    iput-boolean v10, p0, Lcom/nativex/common/ExternalTrackingManager;->enabled:Z

    .line 137
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->loadExternalTrackingLastTrackTime()J

    move-result-wide v2

    .line 140
    .local v2, "lastTrackTime":J
    cmp-long v4, v2, v8

    if-lez v4, :cond_1

    add-long v4, v2, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 141
    iput-boolean v10, p0, Lcom/nativex/common/ExternalTrackingManager;->enabled:Z

    .line 148
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/nativex/common/ExternalTrackingManager;->enabled:Z

    return v4

    .line 142
    :cond_1
    iget-wide v4, p0, Lcom/nativex/common/ExternalTrackingManager;->firstRunTime:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 143
    iget-wide v4, p0, Lcom/nativex/common/ExternalTrackingManager;->firstRunTime:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v6, v8

    add-long v0, v4, v6

    .line 144
    .local v0, "endTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 145
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nativex/common/ExternalTrackingManager;->enabled:Z

    goto :goto_0
.end method

.method public static start()V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lcom/nativex/common/ExternalTrackingManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    :try_start_0
    sget-object v1, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    iget-object v1, v1, Lcom/nativex/common/ExternalTrackingManager;->handler:Landroid/os/Handler;

    const v2, 0x51acf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ExternalTracking: Exception caugh while sending the tracking call"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "Disabled"

    invoke-static {v1}, Lcom/nativex/common/ExternalTrackingManager;->fireListener(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private storeStartDate()V
    .locals 3

    .prologue
    .line 122
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/SharedPreferenceManager;->initialize(Landroid/content/Context;)V

    .line 130
    :cond_0
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/nativex/common/ExternalTrackingManager;->firstRunTime:J

    .line 131
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    iget-wide v0, v0, Lcom/nativex/common/ExternalTrackingManager;->firstRunTime:J

    invoke-static {v0, v1}, Lcom/nativex/common/SharedPreferenceManager;->storeExternalTrackingDeviceDate(J)V

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_1
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    const-wide/16 v1, -0x3

    iput-wide v1, v0, Lcom/nativex/common/ExternalTrackingManager;->firstRunTime:J

    goto :goto_0
.end method

.method private static track()V
    .locals 4

    .prologue
    .line 169
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    new-instance v1, Lcom/kochava/android/tracker/Feature;

    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    invoke-direct {v3}, Lcom/nativex/common/ExternalTrackingManager;->createInputs()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/kochava/android/tracker/Feature;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v1, v0, Lcom/nativex/common/ExternalTrackingManager;->externalTracker:Lcom/kochava/android/tracker/Feature;

    .line 171
    sget-object v0, Lcom/nativex/common/ExternalTrackingManager;->instance:Lcom/nativex/common/ExternalTrackingManager;

    iget-object v0, v0, Lcom/nativex/common/ExternalTrackingManager;->externalTracker:Lcom/kochava/android/tracker/Feature;

    invoke-virtual {v0}, Lcom/kochava/android/tracker/Feature;->startSession()V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nativex/common/SharedPreferenceManager;->storeLastTrackTime(J)V

    .line 173
    const-string v0, "Tracking call sent."

    invoke-static {v0}, Lcom/nativex/common/ExternalTrackingManager;->fireListener(Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

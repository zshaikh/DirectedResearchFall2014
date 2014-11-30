.class public Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;
.super Lcom/gamesys/android/common/tools/fwk/AbstractContext;
.source "SomoApptimiserContext.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$gamesys$android$somoapptimiser$ane$TrackerAction:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private applicationId:I

.field private tracker:Lcom/somo/apptimiser/SomoTracker;


# direct methods
.method static synthetic $SWITCH_TABLE$com$gamesys$android$somoapptimiser$ane$TrackerAction()[I
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->$SWITCH_TABLE$com$gamesys$android$somoapptimiser$ane$TrackerAction:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->values()[Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->START:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    invoke-virtual {v1}, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->STOP:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    invoke-virtual {v1}, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->TRACK_SALE:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    invoke-virtual {v1}, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->TRACK_SALE_VALUE:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    invoke-virtual {v1}, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->TRACK_SIGN_UP:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    invoke-virtual {v1}, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->$SWITCH_TABLE$com$gamesys$android$somoapptimiser$ane$TrackerAction:[I

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
    .line 20
    const-class v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "extensionIdentifier"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;-><init>(Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->tracker:Lcom/somo/apptimiser/SomoTracker;

    .line 17
    return-void
.end method

.method private executeAction(Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;)Ljava/lang/String;
    .locals 1
    .param p1, "action"    # Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->executeAction(Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private executeAction(Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "action"    # Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "result":Ljava/lang/String;
    iget-boolean v1, p1, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->requireNonNullTrackerInstance:Z

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->tracker:Lcom/somo/apptimiser/SomoTracker;

    if-nez v1, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->notifyTrackerNotInitialized()Ljava/lang/String;

    move-result-object v1

    .line 149
    :goto_0
    return-object v1

    .line 124
    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->$SWITCH_TABLE$com$gamesys$android$somoapptimiser$ane$TrackerAction()[I

    move-result-object v1

    .line 125
    invoke-virtual {p1}, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 146
    :goto_1
    const-string v0, "com.gamesys.android.somoapptimiser.ane.RESULT_SUCCESS"

    :cond_1
    move-object v1, v0

    .line 149
    goto :goto_0

    .line 127
    :pswitch_0
    invoke-direct {p0}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->performStartAction()Ljava/lang/String;

    move-result-object v0

    .line 128
    goto :goto_1

    .line 130
    :pswitch_1
    sget-object v1, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->TAG:Ljava/lang/String;

    const-string v2, "Stopping tracker..."

    invoke-static {v1, v2}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->tracker:Lcom/somo/apptimiser/SomoTracker;

    invoke-interface {v1}, Lcom/somo/apptimiser/SomoTracker;->stop()V

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->tracker:Lcom/somo/apptimiser/SomoTracker;

    goto :goto_1

    .line 135
    :pswitch_2
    iget-object v1, p0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->tracker:Lcom/somo/apptimiser/SomoTracker;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/somo/apptimiser/SomoTracker;->track(I)V

    goto :goto_1

    .line 27
    :pswitch_3
    iget-object v1, p0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->tracker:Lcom/somo/apptimiser/SomoTracker;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/somo/apptimiser/SomoTracker;->track(I)V

    goto :goto_1

    .line 141
    :pswitch_4
    iget-object v1, p0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->tracker:Lcom/somo/apptimiser/SomoTracker;

    const/4 v2, 0x6

    invoke-interface {v1, v2, p2, p3, p4}, Lcom/somo/apptimiser/SomoTracker;->track(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private notifyTrackerNotInitialized()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->TAG:Ljava/lang/String;

    const-string v1, "Error tracker is not initialized yet, call the start method !"

    invoke-static {v0, v1}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "com.gamesys.android.somoapptimiser.ane.ERROR_TRACKER_NOT_INITIALIZED"

    return-object v0
.end method

.method private performStartAction()Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->applicationId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->applicationId:I

    if-nez v1, :cond_1

    .line 160
    :cond_0
    const-string v0, "com.gamesys.android.somoapptimiser.ane.RESULT_ERROR_APPLICATION_ID_NOT_CORRECT"

    .line 176
    :goto_0
    return-object v0

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->tracker:Lcom/somo/apptimiser/SomoTracker;

    if-eqz v1, :cond_2

    .line 163
    const-string v0, "com.gamesys.android.somoapptimiser.ane.RESULT_SUCCESS_ALREADY_INSTANTIATED"

    .line 164
    goto :goto_0

    .line 165
    :cond_2
    sget-object v1, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Instantiating tracker for application id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->applicationId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->applicationId:I

    invoke-static {v1, v2}, Lcom/somo/apptimiser/SomoApptimiserTracker;->getTracker(Landroid/content/Context;I)Lcom/somo/apptimiser/SomoTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->tracker:Lcom/somo/apptimiser/SomoTracker;

    .line 168
    iget-object v1, p0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->tracker:Lcom/somo/apptimiser/SomoTracker;

    if-eqz v1, :cond_3

    .line 169
    const-string v0, "com.gamesys.android.somoapptimiser.ane.RESULT_SUCCESS"

    .line 170
    goto :goto_0

    .line 171
    :cond_3
    const-string v0, "com.gamesys.android.somoapptimiser.ane.RESULT_ERROR_UNABLE_TO_INSTANTIATE_TRACKER"

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->TAG:Ljava/lang/String;

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
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
    .line 43
    sget-object v1, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->TAG:Ljava/lang/String;

    const-string v2, "getFunctions"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "somo.start"

    new-instance v2, Lcom/gamesys/android/somoapptimiser/ane/StartTrackerFunction;

    invoke-direct {v2}, Lcom/gamesys/android/somoapptimiser/ane/StartTrackerFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "somo.stop"

    new-instance v2, Lcom/gamesys/android/somoapptimiser/ane/StopTrackerFunction;

    invoke-direct {v2}, Lcom/gamesys/android/somoapptimiser/ane/StopTrackerFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "somo.track.event.sale"

    new-instance v2, Lcom/gamesys/android/somoapptimiser/ane/TrackSaleFunction;

    invoke-direct {v2}, Lcom/gamesys/android/somoapptimiser/ane/TrackSaleFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "somo.track.event.sale.value"

    new-instance v2, Lcom/gamesys/android/somoapptimiser/ane/TrackSaleValueFunction;

    invoke-direct {v2}, Lcom/gamesys/android/somoapptimiser/ane/TrackSaleValueFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "somo.track.event.signup"

    new-instance v2, Lcom/gamesys/android/somoapptimiser/ane/TrackSignUpFunction;

    invoke-direct {v2}, Lcom/gamesys/android/somoapptimiser/ane/TrackSignUpFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-object v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public initTracker(I)Ljava/lang/String;
    .locals 1
    .param p1, "applicationId"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->applicationId:I

    .line 60
    sget-object v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->START:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    invoke-direct {p0, v0}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->executeAction(Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyActionDone()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public stopTracker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->STOP:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    invoke-direct {p0, v0}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->executeAction(Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackSale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->TRACK_SALE:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    invoke-direct {p0, v0}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->executeAction(Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackSaleValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->TRACK_SALE_VALUE:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    invoke-direct {p0, v0}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->executeAction(Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackSignup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v0, Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;->TRACK_SIGN_UP:Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->executeAction(Lcom/gamesys/android/somoapptimiser/ane/TrackerAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

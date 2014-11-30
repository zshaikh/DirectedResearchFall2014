.class public final Lcom/somo/apptimiser/SomoApptimiserTracker;
.super Ljava/lang/Object;
.source "SomoApptimiserTracker.java"

# interfaces
.implements Lcom/somo/apptimiser/SomoTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;
    }
.end annotation


# static fields
.field private static final EVENT_INSTALLATION:I = 0x1

.field private static final INSTALLATION_ID:Ljava/lang/String; = "installation_id"

.field private static final INSTALL_REFERRER_DELAY:J = 0x7d0L

.field private static final SINGLE_INSTANCE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static TRACKER:Lcom/somo/apptimiser/SomoApptimiserTracker;

.field private static final log:Lcom/somo/apptimiser/SomoLogger;

.field private static final mInstantiateLock:Ljava/lang/Object;


# instance fields
.field private mAndroidId:Ljava/lang/String;

.field private final mApplicationId:I

.field private mConfig:Lcom/somo/apptimiser/SomoConfiguration;

.field private mConnection:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mDispatch:Lcom/somo/apptimiser/SomoDispatch;

.field private mEventStore:Lcom/somo/apptimiser/SomoEventStorer;

.field private mHandset:Ljava/lang/String;

.field private volatile mInitTimeStamp:J

.field private final mInstallationId:Ljava/lang/String;

.field private mLocationTracker:Lcom/somo/apptimiser/SomoLocationTracker;

.field private mOperator:Ljava/lang/String;

.field private mOs:Ljava/lang/String;

.field private volatile mReferrerId:Ljava/lang/String;

.field private volatile mRunningCount:I

.field private final mTempEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/somo/apptimiser/SomoEvent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile trackerState:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/somo/apptimiser/SomoTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->TAG:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/somo/apptimiser/SomoLogger;->getLogger()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v0

    sput-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->log:Lcom/somo/apptimiser/SomoLogger;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mInstantiateLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mTempEvents:Ljava/util/Queue;

    .line 65
    const/4 v3, 0x0

    iput v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mRunningCount:I

    .line 68
    sget-object v3, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->STOPPED:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    iput-object v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->trackerState:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    .line 72
    invoke-direct {p0, p1}, Lcom/somo/apptimiser/SomoApptimiserTracker;->checkPermissions(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/somo/apptimiser/SomoDevice;

    invoke-direct {v0, p1}, Lcom/somo/apptimiser/SomoDevice;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "device":Lcom/somo/apptimiser/SomoDevice;
    sget-object v3, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->INITIALISING:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    iput-object v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->trackerState:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    .line 76
    iput p2, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mApplicationId:I

    .line 77
    new-instance v3, Lcom/somo/apptimiser/SomoConfiguration;

    iget v4, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mApplicationId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/somo/apptimiser/SomoConfiguration;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    iput-object v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mConfig:Lcom/somo/apptimiser/SomoConfiguration;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mAndroidId:Ljava/lang/String;

    .line 79
    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoDevice;->getHandset()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mHandset:Ljava/lang/String;

    .line 80
    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoDevice;->getOS()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mOs:Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoDevice;->getConnection()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mConnection:Ljava/lang/String;

    .line 82
    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoDevice;->getOperator()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mOperator:Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Lcom/somo/apptimiser/SomoApptimiserTracker;->getInstallationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mInstallationId:Ljava/lang/String;

    .line 87
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 89
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mDeviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    iget-object v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mConfig:Lcom/somo/apptimiser/SomoConfiguration;

    invoke-virtual {v3}, Lcom/somo/apptimiser/SomoConfiguration;->getLocationSettings()Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;->isLocationTrackingEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 97
    new-instance v3, Lcom/somo/apptimiser/SomoLocationTracker;

    iget-object v4, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mConfig:Lcom/somo/apptimiser/SomoConfiguration;

    invoke-virtual {v4}, Lcom/somo/apptimiser/SomoConfiguration;->getLocationSettings()Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/somo/apptimiser/SomoLocationTracker;-><init>(Landroid/content/Context;Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;)V

    iput-object v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mLocationTracker:Lcom/somo/apptimiser/SomoLocationTracker;

    .line 101
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mInitTimeStamp:J

    .line 102
    invoke-direct {p0, p1}, Lcom/somo/apptimiser/SomoApptimiserTracker;->asyncSetup(Landroid/content/Context;)V

    .line 103
    return-void

    .line 91
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, ""

    iput-object v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mDeviceId:Ljava/lang/String;

    goto :goto_0

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mLocationTracker:Lcom/somo/apptimiser/SomoLocationTracker;

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mInstantiateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/somo/apptimiser/SomoApptimiserTracker;)Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoApptimiserTracker;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->trackerState:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/somo/apptimiser/SomoApptimiserTracker;Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;)Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;
    .locals 0
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoApptimiserTracker;
    .param p1, "x1"    # Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->trackerState:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/somo/apptimiser/SomoApptimiserTracker;)Lcom/somo/apptimiser/SomoConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoApptimiserTracker;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mConfig:Lcom/somo/apptimiser/SomoConfiguration;

    return-object v0
.end method

.method static synthetic access$300(Lcom/somo/apptimiser/SomoApptimiserTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoApptimiserTracker;

    .prologue
    .line 32
    iget v0, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mApplicationId:I

    return v0
.end method

.method static synthetic access$400(Lcom/somo/apptimiser/SomoApptimiserTracker;)Lcom/somo/apptimiser/SomoEventStorer;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoApptimiserTracker;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mEventStore:Lcom/somo/apptimiser/SomoEventStorer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/somo/apptimiser/SomoApptimiserTracker;Lcom/somo/apptimiser/SomoEventStorer;)Lcom/somo/apptimiser/SomoEventStorer;
    .locals 0
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoApptimiserTracker;
    .param p1, "x1"    # Lcom/somo/apptimiser/SomoEventStorer;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mEventStore:Lcom/somo/apptimiser/SomoEventStorer;

    return-object p1
.end method

.method static synthetic access$502(Lcom/somo/apptimiser/SomoApptimiserTracker;Lcom/somo/apptimiser/SomoDispatch;)Lcom/somo/apptimiser/SomoDispatch;
    .locals 0
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoApptimiserTracker;
    .param p1, "x1"    # Lcom/somo/apptimiser/SomoDispatch;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mDispatch:Lcom/somo/apptimiser/SomoDispatch;

    return-object p1
.end method

.method static synthetic access$600(Lcom/somo/apptimiser/SomoApptimiserTracker;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoApptimiserTracker;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mTempEvents:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$700(Lcom/somo/apptimiser/SomoApptimiserTracker;)J
    .locals 2
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoApptimiserTracker;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mInitTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/somo/apptimiser/SomoApptimiserTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoApptimiserTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mReferrerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900()Lcom/somo/apptimiser/SomoLogger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->log:Lcom/somo/apptimiser/SomoLogger;

    return-object v0
.end method

.method private asyncSetup(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    new-instance v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;

    invoke-direct {v0, p0, p1}, Lcom/somo/apptimiser/SomoApptimiserTracker$1;-><init>(Lcom/somo/apptimiser/SomoApptimiserTracker;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->start()V

    .line 227
    return-void
.end method

.method private checkPermissions(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 135
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "inet":I
    if-eqz v0, :cond_0

    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/somo/apptimiser/SomoApptimiser;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Required permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not granted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_0
    return-void
.end method

.method private getInstallationID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const-string v2, "SOMO"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 113
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "installation_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "installation_id":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 117
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "installation_id"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    sget-object v2, Lcom/somo/apptimiser/SomoApptimiserTracker;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v3, "Failed to save the installation ID"

    invoke-virtual {v2, v3}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/String;)I

    .line 124
    :cond_0
    return-object v0
.end method

.method public static final getTracker(Landroid/content/Context;I)Lcom/somo/apptimiser/SomoTracker;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # I

    .prologue
    .line 306
    sget-object v1, Lcom/somo/apptimiser/SomoApptimiserTracker;->mInstantiateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_0
    sget-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->TRACKER:Lcom/somo/apptimiser/SomoApptimiserTracker;

    if-nez v0, :cond_2

    .line 308
    new-instance v0, Lcom/somo/apptimiser/SomoApptimiserTracker;

    invoke-direct {v0, p0, p1}, Lcom/somo/apptimiser/SomoApptimiserTracker;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->TRACKER:Lcom/somo/apptimiser/SomoApptimiserTracker;

    .line 335
    :cond_0
    :goto_0
    sget-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->TRACKER:Lcom/somo/apptimiser/SomoApptimiserTracker;

    iget-object v0, v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mLocationTracker:Lcom/somo/apptimiser/SomoLocationTracker;

    if-eqz v0, :cond_1

    .line 336
    sget-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->TRACKER:Lcom/somo/apptimiser/SomoApptimiserTracker;

    iget-object v0, v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mLocationTracker:Lcom/somo/apptimiser/SomoLocationTracker;

    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoLocationTracker;->start()V

    .line 338
    :cond_1
    sget-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->TRACKER:Lcom/somo/apptimiser/SomoApptimiserTracker;

    iget v2, v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mRunningCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mRunningCount:I

    .line 339
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    sget-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->TRACKER:Lcom/somo/apptimiser/SomoApptimiserTracker;

    return-object v0

    .line 311
    :cond_2
    :try_start_1
    sget-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->TRACKER:Lcom/somo/apptimiser/SomoApptimiserTracker;

    iget-object v0, v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->trackerState:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    sget-object v2, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->STOPPED:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    if-ne v0, v2, :cond_4

    .line 312
    sget-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->TRACKER:Lcom/somo/apptimiser/SomoApptimiserTracker;

    iget-object v0, v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mDispatch:Lcom/somo/apptimiser/SomoDispatch;

    if-eqz v0, :cond_3

    .line 313
    sget-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->TRACKER:Lcom/somo/apptimiser/SomoApptimiserTracker;

    iget-object v0, v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mDispatch:Lcom/somo/apptimiser/SomoDispatch;

    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoDispatch;->start()V

    .line 330
    :cond_3
    :goto_1
    sget-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->TRACKER:Lcom/somo/apptimiser/SomoApptimiserTracker;

    iget-object v0, v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->trackerState:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    sget-object v2, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->INITIALISING:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    if-eq v0, v2, :cond_0

    .line 331
    sget-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->TRACKER:Lcom/somo/apptimiser/SomoApptimiserTracker;

    sget-object v2, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->RUNNING:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    iput-object v2, v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->trackerState:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 324
    :cond_4
    :try_start_2
    sget-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v2, "Apptimiser not shutdown before restart"

    invoke-virtual {v0, v2}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 360
    sget-object v1, Lcom/somo/apptimiser/SomoApptimiserTracker;->mInstantiateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_0
    iget v0, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mRunningCount:I

    if-ne v0, v2, :cond_2

    .line 362
    sget-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->STOPPED:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    iput-object v0, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->trackerState:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    .line 364
    iget-object v0, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mLocationTracker:Lcom/somo/apptimiser/SomoLocationTracker;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mLocationTracker:Lcom/somo/apptimiser/SomoLocationTracker;

    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoLocationTracker;->stop()V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mDispatch:Lcom/somo/apptimiser/SomoDispatch;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mDispatch:Lcom/somo/apptimiser/SomoDispatch;

    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoDispatch;->stop()V

    .line 376
    :cond_1
    iget v0, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mRunningCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mRunningCount:I

    .line 377
    monitor-exit v1

    .line 378
    :goto_0
    return-void

    .line 370
    :cond_2
    iget v0, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mRunningCount:I

    if-ge v0, v2, :cond_1

    .line 371
    sget-object v0, Lcom/somo/apptimiser/SomoApptimiserTracker;->TAG:Ljava/lang/String;

    const-string v2, "Warning: Cannot stop Apptimiser, no running instance"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    monitor-exit v1

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public track(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/somo/apptimiser/SomoApptimiserTracker;->track(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public track(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "type"    # I
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "site"    # Ljava/lang/String;
    .param p4, "info"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v7, 0x0

    .line 238
    .local v7, "sLocation":Ljava/lang/String;
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 239
    .local v6, "now":Landroid/text/format/Time;
    const-wide/16 v8, 0x0

    iput-wide v8, v6, Landroid/text/format/Time;->gmtoff:J

    .line 240
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 242
    iget-object v8, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->trackerState:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    sget-object v9, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->STOPPED:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    if-ne v8, v9, :cond_1

    .line 243
    sget-object v8, Lcom/somo/apptimiser/SomoApptimiserTracker;->TAG:Ljava/lang/String;

    const-string v9, "Warning: Apptimiser not running"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    iget-wide v10, v6, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    sub-long v3, v8, v10

    .line 249
    .local v3, "lEventTime":J
    const/4 v8, 0x1

    if-ne p1, v8, :cond_2

    .line 255
    const-wide/16 v8, 0x7d0

    sub-long/2addr v3, v8

    .line 258
    :cond_2
    iget-object v8, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mLocationTracker:Lcom/somo/apptimiser/SomoLocationTracker;

    if-eqz v8, :cond_3

    .line 259
    iget-object v8, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mLocationTracker:Lcom/somo/apptimiser/SomoLocationTracker;

    invoke-virtual {v8}, Lcom/somo/apptimiser/SomoLocationTracker;->getLocation()Landroid/location/Location;

    move-result-object v5

    .line 260
    .local v5, "location":Landroid/location/Location;
    if-eqz v5, :cond_3

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 265
    .end local v5    # "location":Landroid/location/Location;
    :cond_3
    :try_start_0
    new-instance v8, Lcom/somo/apptimiser/SomoEvent$Builder;

    invoke-direct {v8}, Lcom/somo/apptimiser/SomoEvent$Builder;-><init>()V

    invoke-virtual {v8, p1}, Lcom/somo/apptimiser/SomoEvent$Builder;->eventType(I)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/somo/apptimiser/SomoEvent$Builder;->deviceId(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mAndroidId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/somo/apptimiser/SomoEvent$Builder;->androidId(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mHandset:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/somo/apptimiser/SomoEvent$Builder;->handset(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mOs:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/somo/apptimiser/SomoEvent$Builder;->os(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mConnection:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/somo/apptimiser/SomoEvent$Builder;->connection(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mOperator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/somo/apptimiser/SomoEvent$Builder;->operator(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Lcom/somo/apptimiser/SomoEvent$Builder;->eventTime(J)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v8

    iget v9, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mApplicationId:I

    invoke-virtual {v8, v9}, Lcom/somo/apptimiser/SomoEvent$Builder;->applicationId(I)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/somo/apptimiser/SomoEvent$Builder;->location(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/somo/apptimiser/SomoEvent$Builder;->source(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/somo/apptimiser/SomoEvent$Builder;->sourceSite(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Lcom/somo/apptimiser/SomoEvent$Builder;->info(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mReferrerId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/somo/apptimiser/SomoEvent$Builder;->referrer(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mInstallationId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/somo/apptimiser/SomoEvent$Builder;->installationId(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/somo/apptimiser/SomoEvent$Builder;->build()Lcom/somo/apptimiser/SomoEvent;

    move-result-object v2

    .line 283
    .local v2, "event":Lcom/somo/apptimiser/SomoEvent;
    iget-object v8, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->trackerState:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    sget-object v9, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->RUNNING:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    if-ne v8, v9, :cond_4

    .line 284
    invoke-static {}, Lcom/somo/apptimiser/SomoEventQueue;->getInstance()Lcom/somo/apptimiser/SomoEventQueue;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/somo/apptimiser/SomoEventQueue;->addEvent(Lcom/somo/apptimiser/SomoEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 290
    .end local v2    # "event":Lcom/somo/apptimiser/SomoEvent;
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/somo/apptimiser/SomoApptimiserTracker;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v9, "Upload event failed"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v1, v9, v10}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 285
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "event":Lcom/somo/apptimiser/SomoEvent;
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->trackerState:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    sget-object v9, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->INITIALISING:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    if-ne v8, v9, :cond_0

    .line 286
    iget-object v9, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mTempEvents:Ljava/util/Queue;

    monitor-enter v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    :try_start_2
    iget-object v8, p0, Lcom/somo/apptimiser/SomoApptimiserTracker;->mTempEvents:Ljava/util/Queue;

    invoke-interface {v8, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 288
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

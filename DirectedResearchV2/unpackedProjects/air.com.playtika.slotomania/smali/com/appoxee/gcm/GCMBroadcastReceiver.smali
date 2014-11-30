.class public Lcom/appoxee/gcm/GCMBroadcastReceiver;
.super Lcom/google/android/gcm/GCMBroadcastReceiver;
.source "GCMBroadcastReceiver.java"


# static fields
.field public static defaultAppoxeeIntentServiceClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "com.appoxee.gcm.GCMIntentService"

    sput-object v0, Lcom/appoxee/gcm/GCMBroadcastReceiver;->defaultAppoxeeIntentServiceClassName:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 32
    .local v1, "prefs":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;->NOTIFICATIONS_ENABLED:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    sget-object v0, Lcom/appoxee/gcm/GCMBroadcastReceiver;->defaultAppoxeeIntentServiceClassName:Ljava/lang/String;

    .line 36
    .local v0, "className":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 35
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .restart local v0    # "className":Ljava/lang/String;
    goto :goto_0
.end method

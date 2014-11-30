.class Lcom/somo/apptimiser/SomoPreferences;
.super Ljava/lang/Object;
.source "SomoPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/somo/apptimiser/SomoPreferences$Editor;,
        Lcom/somo/apptimiser/SomoPreferences$Preferences;
    }
.end annotation


# static fields
.field static final SHARED_PREFERENCES:Ljava/lang/String; = "somo_apptimiser"


# instance fields
.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "somo_apptimiser"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoPreferences;->prefs:Landroid/content/SharedPreferences;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/somo/apptimiser/SomoPreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoPreferences;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/somo/apptimiser/SomoPreferences;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method edit()Lcom/somo/apptimiser/SomoPreferences$Editor;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/somo/apptimiser/SomoPreferences$Editor;

    invoke-direct {v0, p0}, Lcom/somo/apptimiser/SomoPreferences$Editor;-><init>(Lcom/somo/apptimiser/SomoPreferences;)V

    return-object v0
.end method

.method getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/somo/apptimiser/SomoPreferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "device.id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDispatchBackoff()J
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/somo/apptimiser/SomoPreferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "dispatch_backoff"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method getFingerprint()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/somo/apptimiser/SomoPreferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "fingerprint"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getReferrer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/somo/apptimiser/SomoPreferences;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "referrer"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

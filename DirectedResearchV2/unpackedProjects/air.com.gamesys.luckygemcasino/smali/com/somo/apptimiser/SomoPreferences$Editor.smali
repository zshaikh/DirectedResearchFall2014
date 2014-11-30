.class Lcom/somo/apptimiser/SomoPreferences$Editor;
.super Ljava/lang/Object;
.source "SomoPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Editor"
.end annotation


# instance fields
.field private final editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/somo/apptimiser/SomoPreferences;


# direct methods
.method constructor <init>(Lcom/somo/apptimiser/SomoPreferences;)V
    .locals 1

    .prologue
    .line 75
    iput-object p1, p0, Lcom/somo/apptimiser/SomoPreferences$Editor;->this$0:Lcom/somo/apptimiser/SomoPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    # getter for: Lcom/somo/apptimiser/SomoPreferences;->prefs:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/somo/apptimiser/SomoPreferences;->access$000(Lcom/somo/apptimiser/SomoPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoPreferences$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    .line 77
    return-void
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/somo/apptimiser/SomoPreferences$Editor;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    if-eqz p2, :cond_0

    .line 85
    iget-object v0, p0, Lcom/somo/apptimiser/SomoPreferences$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    :goto_0
    return-object p0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/somo/apptimiser/SomoPreferences$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method commit()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/somo/apptimiser/SomoPreferences$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method setDeviceId(Ljava/lang/String;)Lcom/somo/apptimiser/SomoPreferences$Editor;
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string v0, "device.id"

    invoke-direct {p0, v0, p1}, Lcom/somo/apptimiser/SomoPreferences$Editor;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/somo/apptimiser/SomoPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method setDispatchBackoff(J)Lcom/somo/apptimiser/SomoPreferences$Editor;
    .locals 2
    .param p1, "millis"    # J

    .prologue
    .line 93
    iget-object v0, p0, Lcom/somo/apptimiser/SomoPreferences$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dispatch_backoff"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 94
    return-object p0
.end method

.method setFingerprint(Ljava/lang/String;)Lcom/somo/apptimiser/SomoPreferences$Editor;
    .locals 1
    .param p1, "fingerprint"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "fingerprint"

    invoke-direct {p0, v0, p1}, Lcom/somo/apptimiser/SomoPreferences$Editor;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/somo/apptimiser/SomoPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method setReferrer(Ljava/lang/String;)Lcom/somo/apptimiser/SomoPreferences$Editor;
    .locals 1
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v0, "referrer"

    invoke-direct {p0, v0, p1}, Lcom/somo/apptimiser/SomoPreferences$Editor;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/somo/apptimiser/SomoPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

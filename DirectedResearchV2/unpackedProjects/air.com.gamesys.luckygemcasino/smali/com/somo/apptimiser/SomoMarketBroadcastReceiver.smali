.class public Lcom/somo/apptimiser/SomoMarketBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SomoMarketBroadcastReceiver.java"


# static fields
.field private static final ACTION_INSTALL_REFERRER:Ljava/lang/String; = "com.android.vending.INSTALL_REFERRER"

.field private static final EXTRA_REFERRER:Ljava/lang/String; = "referrer"

.field private static final log:Lcom/somo/apptimiser/SomoLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/somo/apptimiser/SomoLogger;->getLogger()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v0

    sput-object v0, Lcom/somo/apptimiser/SomoMarketBroadcastReceiver;->log:Lcom/somo/apptimiser/SomoLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 21
    sget-object v3, Lcom/somo/apptimiser/SomoMarketBroadcastReceiver;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v4, "Broadcast intent %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    const-string v3, "referrer"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "referrer":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 28
    new-instance v1, Lcom/somo/apptimiser/SomoPreferences;

    invoke-direct {v1, p1}, Lcom/somo/apptimiser/SomoPreferences;-><init>(Landroid/content/Context;)V

    .line 29
    .local v1, "prefs":Lcom/somo/apptimiser/SomoPreferences;
    sget-object v3, Lcom/somo/apptimiser/SomoMarketBroadcastReceiver;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v4, "Received referrer data: %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 30
    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoPreferences;->edit()Lcom/somo/apptimiser/SomoPreferences$Editor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/somo/apptimiser/SomoPreferences$Editor;->setReferrer(Ljava/lang/String;)Lcom/somo/apptimiser/SomoPreferences$Editor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/somo/apptimiser/SomoPreferences$Editor;->commit()Z

    .line 35
    .end local v1    # "prefs":Lcom/somo/apptimiser/SomoPreferences;
    .end local v2    # "referrer":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 32
    .restart local v2    # "referrer":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/somo/apptimiser/SomoMarketBroadcastReceiver;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v4, "Referrer data was null"

    invoke-virtual {v3, v4}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

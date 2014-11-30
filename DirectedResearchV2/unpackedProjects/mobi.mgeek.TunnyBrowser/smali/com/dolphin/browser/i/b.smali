.class public Lcom/dolphin/browser/i/b;
.super Lcom/dolphin/browser/i/d;
.source "ENNameServiceManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/i/b;

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/i/h;->a()Lcom/dolphin/browser/i/h;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/i/d;-><init>(Landroid/content/Context;Lcom/dolphin/browser/i/a/d;)V

    .line 39
    return-void
.end method

.method public static a()Lcom/dolphin/browser/i/b;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/dolphin/browser/i/b;->a:Lcom/dolphin/browser/i/b;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/dolphin/browser/i/b;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/i/b;->a:Lcom/dolphin/browser/i/b;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/dolphin/browser/i/b;

    invoke-direct {v0}, Lcom/dolphin/browser/i/b;-><init>()V

    sput-object v0, Lcom/dolphin/browser/i/b;->a:Lcom/dolphin/browser/i/b;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/dolphin/browser/i/b;->a:Lcom/dolphin/browser/i/b;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    const-string v0, "version_update_service"

    const-string v1, "https://opsen.dolphin-browser.com/api/2/updateservice.json"

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/i/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/util/HashMap;
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
    .line 88
    sget-object v0, Lcom/dolphin/browser/i/b;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    const-string v1, "data_config_service"

    const-string v2, "http://opsen.dolphin-browser.com/api/1/builtins.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "version_update_service"

    const-string v2, "https://opsen.dolphin-browser.com/api/2/updateservice.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "promotion_link_service"

    const-string v2, "https://opsen.dolphin-browser.com/api/promolink.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "promotion_dialog_service"

    const-string v2, "http://opsen.dolphin-browser.com/api/securityapps.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "promotion_add_on_service"

    const-string v2, "http://opsen.dolphin-browser.com/api/addons.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "sonar_service"

    const-string v2, "http://vcen.dolphin-browser.com/api/voice/1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "push_notification_service"

    const-string v2, "https://pnsen.dolphin-browser.com/notification/android/message.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "dolphin_connect_service"

    const-string v2, "https://sen.dolphin-browser.com/api/2/user"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "dolphin_connect_oauth_service"

    const-string v2, "https://sen.dolphin-browser.com/accounts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "dolphin_connect_oauth_callback_service"

    const-string v2, "http://sen.dolphin-browser.com/accounts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "preset_service"

    const-string v2, "https://opsen.dolphin-browser.com/api/1/preset.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sput-object v0, Lcom/dolphin/browser/i/b;->b:Ljava/util/HashMap;

    .line 104
    :cond_0
    sget-object v0, Lcom/dolphin/browser/i/b;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    const-string v0, "promotion_link_service"

    const-string v1, "https://opsen.dolphin-browser.com/api/promolink.json"

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/i/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    const-string v0, "promotion_dialog_service"

    const-string v1, "http://opsen.dolphin-browser.com/api/securityapps.json"

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/i/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    const-string v0, "promotion_add_on_service"

    const-string v1, "http://opsen.dolphin-browser.com/api/addons.json"

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/i/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    const-string v0, "dolphin_connect_service"

    const-string v1, "https://sen.dolphin-browser.com/api/2/user"

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/i/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    const-string v0, "dolphin_connect_oauth_service"

    const-string v1, "https://sen.dolphin-browser.com/accounts"

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/i/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    const-string v0, "dolphin_connect_oauth_callback_service"

    const-string v1, "http://sen.dolphin-browser.com/accounts"

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/i/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    const-string v0, "preset_service"

    const-string v1, "https://opsen.dolphin-browser.com/api/1/preset.json"

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/i/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

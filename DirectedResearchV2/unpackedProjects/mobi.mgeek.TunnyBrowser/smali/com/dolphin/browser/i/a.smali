.class public Lcom/dolphin/browser/i/a;
.super Lcom/dolphin/browser/i/d;
.source "CNNameServiceManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/i/a;

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
    .line 41
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/i/h;->a()Lcom/dolphin/browser/i/h;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/i/d;-><init>(Landroid/content/Context;Lcom/dolphin/browser/i/a/d;)V

    .line 42
    return-void
.end method

.method public static a()Lcom/dolphin/browser/i/a;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/i/a;->a:Lcom/dolphin/browser/i/a;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/dolphin/browser/i/a;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/i/a;->a:Lcom/dolphin/browser/i/a;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/dolphin/browser/i/a;

    invoke-direct {v0}, Lcom/dolphin/browser/i/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/i/a;->a:Lcom/dolphin/browser/i/a;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/dolphin/browser/i/a;->a:Lcom/dolphin/browser/i/a;

    return-object v0

    .line 35
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
    .line 61
    const-string v0, "promotion_add_on_service"

    const-string v1, "http://opscn.dolphin-browser.com/api/addons.json"

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/i/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    .line 107
    sget-object v0, Lcom/dolphin/browser/i/a;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    const-string v1, "data_config_service"

    const-string v2, "http://opscn.dolphin-browser.com/api/1/builtins.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "version_update_service"

    const-string v2, "https://opscn.dolphin-browser.com/api/4/updateservice.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "splash_service"

    const-string v2, "http://opscn.dolphin-browser.com/api/splash.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "promotion_link_service"

    const-string v2, "http://opscn.dolphin-browser.com/api/promolink.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "promotion_add_on_service"

    const-string v2, "http://opscn.dolphin-browser.com/api/addons.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "sonar_service"

    const-string v2, "http://vccn.dolphin-browser.com/api/voice/1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "content_center_service"

    const-string v2, "http://opscn.dolphin-browser.com/api/2/sections"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "push_notification_service"

    const-string v2, "https://pnscn.dolphin-browser.com/notification/android/messages.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "dolphin_connect_service"

    const-string v2, "https://scn.dolphin-browser.com/api/2/user"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "dolphin_connect_oauth_service"

    const-string v2, "https://scn.dolphin-browser.com/accounts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "dolphin_connect_oauth_callback_service"

    const-string v2, "http://scn.dolphin-browser.com/accounts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "webapps_service"

    const-string v2, "http://opscn.dolphin-browser.com/api/2/treasure.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "theme_promotion_service"

    const-string v2, "http://opscn.dolphin-browser.com/api/1/skin/promote.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "app_update_service"

    const-string v2, "http://service.dianapk.com/openapi/app/updates2.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "content_center_section_service"

    const-string v2, "http://opscn.dolphin-browser.com/api/2/section.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sput-object v0, Lcom/dolphin/browser/i/a;->b:Ljava/util/HashMap;

    .line 128
    :cond_0
    sget-object v0, Lcom/dolphin/browser/i/a;->b:Ljava/util/HashMap;

    return-object v0
.end method

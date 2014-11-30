.class public abstract Lcom/dolphin/browser/i/d;
.super Ljava/lang/Object;
.source "NameServiceManager.java"


# instance fields
.field private a:Lcom/dolphin/browser/i/a/a;

.field private b:Lcom/dolphin/browser/i/g;

.field private volatile c:Ljava/util/HashMap;
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
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/i/a/d;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/dolphin/browser/i/a/a;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/i/a/a;-><init>(Landroid/content/Context;Lcom/dolphin/browser/i/a/d;)V

    iput-object v0, p0, Lcom/dolphin/browser/i/d;->a:Lcom/dolphin/browser/i/a/a;

    .line 47
    new-instance v0, Lcom/dolphin/browser/i/g;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/i/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/i/d;->b:Lcom/dolphin/browser/i/g;

    .line 48
    invoke-virtual {p0}, Lcom/dolphin/browser/i/d;->l()Ljava/util/HashMap;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/i/d;)Lcom/dolphin/browser/i/g;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dolphin/browser/i/d;->b:Lcom/dolphin/browser/i/g;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/i/d;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/dolphin/browser/i/d;->c:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/i/d;Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/dolphin/browser/i/d;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 191
    :goto_0
    return-object v0

    .line 164
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    const-string v1, "data_config_service"

    const-string v2, "data_config_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "version_update_service"

    const-string v2, "version_update_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "splash_service"

    const-string v2, "splash_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "promotion_link_service"

    const-string v2, "promotion_link_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "promotion_add_on_service"

    const-string v2, "promotion_add_on_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "sonar_service"

    const-string v2, "sonar_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "content_center_service"

    const-string v2, "content_center_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "push_notification_service"

    const-string v2, "push_notification_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "dolphin_connect_service"

    const-string v2, "dolphin_connect_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "dolphin_connect_oauth_service"

    const-string v2, "dolphin_connect_oauth_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "dolphin_connect_oauth_callback_service"

    const-string v2, "dolphin_connect_oauth_callback_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "webapps_service"

    const-string v2, "webapps_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v1, "theme_promotion_service"

    const-string v2, "theme_promotion_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v1, "app_update_service"

    const-string v2, "app_update_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v1, "content_center_section_service"

    const-string v2, "content_center_section_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "promotion_dialog_service"

    const-string v2, "promotion_dialog_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "preset_service"

    const-string v2, "preset_service"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method static synthetic a(Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 1

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/dolphin/browser/i/d;->b(Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/i/d;)Lcom/dolphin/browser/i/a/a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dolphin/browser/i/d;->a:Lcom/dolphin/browser/i/a/a;

    return-object v0
.end method

.method private static b(Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 196
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move v0, v2

    .line 217
    :goto_0
    return v0

    .line 200
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v3

    .line 201
    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    move v0, v3

    .line 205
    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 210
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move v0, v3

    .line 211
    goto :goto_0

    .line 212
    :cond_5
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    .line 213
    goto :goto_0

    :cond_6
    move v0, v2

    .line 217
    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/dolphin/browser/i/d;->l()Ljava/util/HashMap;

    .line 118
    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lcom/dolphin/browser/i/d;->c:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/i/d;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/i/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/dolphin/browser/i/d;->c()Ljava/util/HashMap;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/dolphin/browser/i/d;->l()Ljava/util/HashMap;

    .line 104
    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lcom/dolphin/browser/i/d;->c:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/i/d;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/i/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    :goto_0
    return-object p2

    :cond_1
    move-object p2, v0

    goto :goto_0
.end method

.method protected abstract c()Ljava/util/HashMap;
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
.end method

.method public k()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/dolphin/browser/i/e;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/i/e;-><init>(Lcom/dolphin/browser/i/d;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public l()Ljava/util/HashMap;
    .locals 2
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
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/i/d;->c:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/i/d;->c:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/dolphin/browser/i/d;->b:Lcom/dolphin/browser/i/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/i/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, v1}, Lcom/dolphin/browser/i/d;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/i/d;->c:Ljava/util/HashMap;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/dolphin/browser/i/d;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/dolphin/browser/i/d;->c()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/i/d;->c:Ljava/util/HashMap;

    .line 94
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/i/d;->c:Ljava/util/HashMap;

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    :try_start_3
    const-string v1, "NameServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 86
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 137
    :try_start_0
    const-string v1, "data_config_service"

    const-string v2, "data_config_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v1, "version_update_service"

    const-string v2, "version_update_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v1, "splash_service"

    const-string v2, "splash_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v1, "promotion_link_service"

    const-string v2, "promotion_link_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v1, "promotion_add_on_service"

    const-string v2, "promotion_add_on_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v1, "sonar_service"

    const-string v2, "sonar_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v1, "content_center_service"

    const-string v2, "content_center_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v1, "push_notification_service"

    const-string v2, "push_notification_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v1, "dolphin_connect_service"

    const-string v2, "dolphin_connect_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v1, "dolphin_connect_oauth_service"

    const-string v2, "dolphin_connect_oauth_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v1, "dolphin_connect_oauth_callback_service"

    const-string v2, "dolphin_connect_oauth_callback_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v1, "webapps_service"

    const-string v2, "webapps_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v1, "theme_promotion_service"

    const-string v2, "theme_promotion_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v1, "app_update_service"

    const-string v2, "app_update_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v1, "content_center_section_service"

    const-string v2, "content_center_section_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v1, "promotion_dialog_service"

    const-string v2, "promotion_dialog_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v1, "preset_service"

    const-string v2, "preset_service"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :catch_0
    move-exception v1

    goto :goto_0
.end method

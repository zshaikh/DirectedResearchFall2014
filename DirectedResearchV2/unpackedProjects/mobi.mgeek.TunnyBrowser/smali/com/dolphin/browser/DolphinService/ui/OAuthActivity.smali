.class public Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;
.super Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;
.source "OAuthActivity.java"


# instance fields
.field private e:Lcom/dolphin/browser/q/c;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 221
    const-string v0, "status"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 169
    const-string v0, "DBS Login"

    const-string v1, "google"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method private b(I)I
    .locals 1

    .prologue
    .line 205
    const/4 v0, -0x1

    .line 206
    sparse-switch p1, :sswitch_data_0

    .line 217
    :goto_0
    return v0

    .line 208
    :sswitch_0
    const/4 v0, 0x1

    .line 209
    goto :goto_0

    .line 211
    :sswitch_1
    const/4 v0, 0x2

    .line 212
    goto :goto_0

    .line 206
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x1770 -> :sswitch_0
    .end sparse-switch
.end method

.method private b(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 225
    const-string v0, "token"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    const-string v1, "expire_time"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 227
    const-string v2, "user_name"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 228
    const-string v3, "active"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 229
    const-string v4, "auto_created"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 230
    const-string v5, "verified"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 231
    const-string v6, "nick_name"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 232
    const-string v7, "region_domain"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 233
    const-string v8, "email"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 234
    const-string v9, "push_domain"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 235
    const-string v10, "picture"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 237
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 238
    const-string v12, "token"

    invoke-virtual {v11, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v0, "expire_time"

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v0, "user_name"

    invoke-virtual {v11, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string v0, "active"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v0, "auto_created"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v0, "verified"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v0, "nick_name"

    invoke-virtual {v11, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v0, "region_domain"

    invoke-virtual {v11, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v0, "email"

    invoke-virtual {v11, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v0, "push_domain"

    invoke-virtual {v11, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v0, "picture"

    invoke-virtual {v11, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    return-object v11
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 115
    const-string v0, "DBS Login"

    const-string v1, "google"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lcom/dolphin/browser/i/b;->a()Lcom/dolphin/browser/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/i/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "signup/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->e:Lcom/dolphin/browser/q/c;

    iget-object v1, v1, Lcom/dolphin/browser/q/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "r"

    const-string v2, "US"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cid"

    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "v"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "t"

    const-string v2, "121"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/b;->d()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "token"

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 81
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/dolphin/browser/i/b;->a()Lcom/dolphin/browser/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/i/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "2/loginresult?"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->c()V

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 178
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->finish()V

    .line 179
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->c()V

    .line 183
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->l()V

    .line 184
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->k()V

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->e:Lcom/dolphin/browser/q/c;

    iget v1, v1, Lcom/dolphin/browser/q/c;->a:I

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->b(I)I

    move-result v1

    .line 187
    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 188
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->finish()V

    .line 189
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/e;->c(Lcom/dolphin/browser/DolphinService/Account/a;)Z

    .line 194
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->d:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 199
    const-string v1, "DBS Login"

    const-string v2, "google"

    const-string v3, "tosuccess"

    invoke-static {v0, v3}, Lcom/dolphin/browser/DolphinService/ui/aq;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 163
    const-string v0, "cancel"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->e(Ljava/lang/String;)V

    .line 164
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->a()V

    .line 165
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->a(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->e(Ljava/lang/String;)V

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    const-string v1, "web_login_error_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->finish()V

    .line 111
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->d()V

    .line 294
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->b(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 126
    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 128
    sparse-switch v1, :sswitch_data_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server error with status code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->a(Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 131
    :sswitch_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/Account/p;

    .line 133
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->j()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 136
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->a()V

    .line 137
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :sswitch_1
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->a()V

    .line 145
    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->a(I)V

    goto :goto_0

    .line 150
    :sswitch_2
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->i()V

    .line 151
    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->a(I)V

    goto :goto_0

    .line 128
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x11 -> :sswitch_2
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
    .end sparse-switch
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->f:Z

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->f:Z

    .line 286
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->g:Ljava/lang/String;

    .line 287
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/URIUtil;->clearQuery(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->h:Ljava/lang/String;

    .line 289
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 255
    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->e()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 275
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->a()V

    .line 280
    :goto_1
    return-void

    .line 261
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/URIUtil;->clearQuery(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/cn;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 264
    goto :goto_0

    .line 266
    :cond_2
    iget-boolean v3, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->f:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/cn;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 272
    goto :goto_0

    .line 279
    :cond_3
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->onBackPressed()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 46
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_login_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 47
    if-ne v0, v2, :cond_0

    .line 48
    const-string v0, "OAuthActivity"

    const-string v1, "no login type"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-super {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->finish()V

    .line 64
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;

    .line 54
    invoke-static {v0}, Lcom/dolphin/browser/q/b;->a(I)Lcom/dolphin/browser/q/c;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->e:Lcom/dolphin/browser/q/c;

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->e:Lcom/dolphin/browser/q/c;

    iget-object v0, v0, Lcom/dolphin/browser/q/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->h:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->e:Lcom/dolphin/browser/q/c;

    iget-object v0, v0, Lcom/dolphin/browser/q/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->i:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->f:Z

    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->b:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/OAuthActivity;->c:Ljava/lang/String;

    .line 63
    invoke-super {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method

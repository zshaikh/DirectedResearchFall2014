.class public Lcom/dolphin/browser/preload/m;
.super Ljava/lang/Object;
.source "PreloadManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/preload/m;


# instance fields
.field private b:Lcom/dolphin/browser/preload/n;

.field private c:Landroid/content/Context;

.field private d:Lcom/dolphin/browser/preload/l;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/dolphin/browser/preload/m;->c:Landroid/content/Context;

    .line 42
    new-instance v0, Lcom/dolphin/browser/preload/n;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/preload/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/preload/m;->b:Lcom/dolphin/browser/preload/n;

    .line 43
    return-void
.end method

.method public static a()Lcom/dolphin/browser/preload/m;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/dolphin/browser/preload/m;->a:Lcom/dolphin/browser/preload/m;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/dolphin/browser/preload/m;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/preload/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/preload/m;->a:Lcom/dolphin/browser/preload/m;

    .line 50
    :cond_0
    sget-object v0, Lcom/dolphin/browser/preload/m;->a:Lcom/dolphin/browser/preload/m;

    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/mgeek/android/util/h;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->d:Lcom/dolphin/browser/preload/l;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/dolphin/browser/preload/l;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/preload/l;-><init>(Z)V

    iput-object v0, p0, Lcom/dolphin/browser/preload/m;->d:Lcom/dolphin/browser/preload/l;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->d:Lcom/dolphin/browser/preload/l;

    return-object v0
.end method

.method public b(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 241
    invoke-virtual {p0}, Lcom/dolphin/browser/preload/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 244
    :cond_0
    const-string v0, "PreloadManager"

    const-string v1, "onUpdate(%s)"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 245
    invoke-virtual {p0, v5}, Lcom/dolphin/browser/preload/m;->a(Z)Lcom/mgeek/android/util/h;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/preload/l;

    .line 246
    const-string v0, "PreloadManager"

    const-string v1, "onUpdate - reading data from assets..."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {}, Lcom/dolphin/browser/preload/l;->c()Lcom/dolphin/browser/preload/a/b;

    move-result-object v0

    .line 248
    const-string v1, "PreloadManager"

    const-string v2, "loadLocalData - applying local data..."

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lcom/dolphin/browser/preload/m;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/preload/f;->a(Landroid/content/Context;)Lcom/dolphin/browser/preload/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/preload/f;->b(Lcom/dolphin/browser/preload/a/b;)V

    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->b:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/preload/n;->d(Z)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->b:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/n;->a()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->b:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/n;->o()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->b:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/n;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->b:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/n;->c()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const-string v0, ""

    .line 88
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/preload/m;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getChannelName()Ljava/lang/String;

    move-result-object v3

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "?l="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&p="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->b:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/n;->d()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const-string v0, ""

    .line 107
    :goto_0
    return-object v0

    .line 104
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/util/bn;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "l"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->b:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/n;->e()V

    .line 133
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->b:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/n;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->b:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/n;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->b:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/n;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->b:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/n;->h()Z

    move-result v0

    return v0
.end method

.method public l()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lcom/dolphin/browser/preload/m;->b:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v1}, Lcom/dolphin/browser/preload/n;->i()Ljava/lang/String;

    move-result-object v1

    .line 165
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/dolphin/browser/search/a/d;->a(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    :cond_0
    :goto_0
    return-object v0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public m()Lcom/dolphin/browser/preload/a/f;
    .locals 3

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    iget-object v1, p0, Lcom/dolphin/browser/preload/m;->b:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v1}, Lcom/dolphin/browser/preload/n;->l()Ljava/lang/String;

    move-result-object v1

    .line 179
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/dolphin/browser/preload/a/f;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/preload/a/f;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->b:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/n;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->b:Lcom/dolphin/browser/preload/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/n;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->d:Lcom/dolphin/browser/preload/l;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/dolphin/browser/preload/m;->d:Lcom/dolphin/browser/preload/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/l;->h()V

    .line 224
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()V
    .locals 4

    .prologue
    .line 231
    const-string v0, "PreloadManager"

    const-string v1, "loadLocalData"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/preload/m;->a(Z)Lcom/mgeek/android/util/h;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/preload/l;

    .line 233
    const-string v1, "PreloadManager"

    const-string v2, "loadLocalData - reading data from assets..."

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Lcom/dolphin/browser/preload/l;->c()Lcom/dolphin/browser/preload/a/b;

    move-result-object v1

    .line 235
    const-string v2, "PreloadManager"

    const-string v3, "loadLocalData - applying local data..."

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/l;->a(Lcom/dolphin/browser/preload/a/b;)V

    .line 237
    const-string v0, "PreloadManager"

    const-string v1, "loadLocalData - done."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

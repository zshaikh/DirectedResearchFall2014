.class final Ldolphin/webkit/gq;
.super Ljava/lang/Object;
.source "SearchBoxImpl.java"

# interfaces
.implements Ldolphin/webkit/gn;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldolphin/webkit/gp;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ldolphin/webkit/WebViewCore;

.field private final c:Ldolphin/webkit/ae;

.field private d:Ldolphin/webkit/go;

.field private e:I

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ldolphin/webkit/gp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldolphin/webkit/WebViewCore;Ldolphin/webkit/ae;)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x1

    iput v0, p0, Ldolphin/webkit/gq;->e:I

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/gq;->a:Ljava/util/List;

    .line 125
    iput-object p1, p0, Ldolphin/webkit/gq;->b:Ldolphin/webkit/WebViewCore;

    .line 126
    iput-object p2, p0, Ldolphin/webkit/gq;->c:Ldolphin/webkit/ae;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/gq;->f:Ljava/util/HashMap;

    .line 128
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IZ)V
    .locals 3

    .prologue
    .line 239
    if-eqz p2, :cond_0

    .line 241
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/gq;->f:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/gp;

    .line 243
    iget-object v1, p0, Ldolphin/webkit/gq;->f:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    const-string v1, "change"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {v0, p3}, Ldolphin/webkit/gp;->a(Z)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 244
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 248
    :cond_1
    const-string v1, "submit"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    invoke-virtual {v0, p3}, Ldolphin/webkit/gp;->b(Z)V

    goto :goto_0

    .line 250
    :cond_2
    const-string v1, "resize"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 251
    invoke-virtual {v0, p3}, Ldolphin/webkit/gp;->c(Z)V

    goto :goto_0

    .line 252
    :cond_3
    const-string v1, "cancel"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v0, p3}, Ldolphin/webkit/gp;->d(Z)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v2, p0, Ldolphin/webkit/gq;->a:Ljava/util/List;

    monitor-enter v2

    .line 307
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/gq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 308
    iget-object v0, p0, Ldolphin/webkit/gq;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/gp;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/gp;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 307
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 310
    :cond_0
    monitor-exit v2

    .line 311
    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Ldolphin/webkit/gq;->d:Ldolphin/webkit/go;

    .line 225
    const/4 v1, 0x0

    iput-object v1, p0, Ldolphin/webkit/gq;->d:Ldolphin/webkit/go;

    .line 226
    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0, p1}, Ldolphin/webkit/go;->a(Z)V

    .line 229
    :cond_0
    return-void
.end method

.method public dispatchCompleteCallback(Ljava/lang/String;IZ)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .annotation runtime Ldolphin/webkit/annotation/JavascriptInterface;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Ldolphin/webkit/gq;->c:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1, p2, p3}, Ldolphin/webkit/ae;->a(Ljava/lang/String;IZ)V

    .line 236
    return-void
.end method

.method public isSupportedCallback(Z)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .annotation runtime Ldolphin/webkit/annotation/JavascriptInterface;
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Ldolphin/webkit/gq;->c:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1}, Ldolphin/webkit/ae;->a(Z)V

    .line 221
    return-void
.end method

.method public setSuggestions(Ljava/lang/String;)V
    .locals 6
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .annotation runtime Ldolphin/webkit/annotation/JavascriptInterface;
    .end annotation

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 281
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 284
    const-string v2, "query"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    const-string v3, "suggestions"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 287
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 288
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 289
    const-string v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 290
    if-eqz v4, :cond_1

    .line 291
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    const-string v1, "WebKit.SearchBoxImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing json ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/gq;->c:Ldolphin/webkit/ae;

    invoke-virtual {v0, v2, v1}, Ldolphin/webkit/ae;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

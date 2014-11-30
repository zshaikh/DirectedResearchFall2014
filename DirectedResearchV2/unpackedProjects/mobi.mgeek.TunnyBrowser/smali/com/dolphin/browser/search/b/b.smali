.class public Lcom/dolphin/browser/search/b/b;
.super Ljava/lang/Object;
.source "SearchEngineInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dolphin/browser/search/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/search/b/b;
    .locals 3

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 213
    :goto_0
    return-object v0

    .line 195
    :cond_0
    new-instance v0, Lcom/dolphin/browser/search/b/b;

    invoke-direct {v0}, Lcom/dolphin/browser/search/b/b;-><init>()V

    .line 196
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/search/b/b;->a:I

    .line 197
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/b/b;->b:Ljava/lang/String;

    .line 198
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/b/b;->c:Ljava/lang/String;

    .line 199
    const-string v1, "suggest"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/b/b;->d:Ljava/lang/String;

    .line 200
    const-string v1, "order"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/search/b/b;->e:I

    .line 201
    const-string v1, "icon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/b/b;->f:Ljava/lang/String;

    .line 202
    const-string v1, "encode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/b/b;->g:Ljava/lang/String;

    .line 203
    const-string v1, "unique_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/b/b;->h:Ljava/lang/String;

    .line 204
    const-string v1, "default"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/dolphin/browser/search/b/b;->i:Z

    .line 205
    const-string v1, "force_default"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/dolphin/browser/search/b/b;->j:Z

    .line 206
    const-string v1, "force_default_to_unchanged_user"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/dolphin/browser/search/b/b;->k:Z

    .line 208
    const-string v1, "color"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/b/b;->l:Ljava/lang/String;

    .line 209
    const-string v1, "pressed_icon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/b/b;->m:Ljava/lang/String;

    .line 210
    const-string v1, "selected"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/dolphin/browser/search/b/b;->n:Z

    .line 211
    const-string v1, "force_selected"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/dolphin/browser/search/b/b;->o:Z

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lcom/dolphin/browser/search/a/e;->a()Lcom/dolphin/browser/search/a/e;

    move-result-object v1

    .line 160
    invoke-virtual {v1, p1}, Lcom/dolphin/browser/search/a/e;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/dolphin/browser/search/a/e;->d(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/dolphin/browser/search/b/b;->a:I

    return v0
.end method

.method public a(Lcom/dolphin/browser/search/b/b;)I
    .locals 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/dolphin/browser/search/b/b;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/dolphin/browser/search/b/b;->i:Z

    if-nez v0, :cond_0

    .line 274
    const/4 v0, -0x1

    .line 277
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/dolphin/browser/search/b/b;->e:I

    iget v1, p1, Lcom/dolphin/browser/search/b/b;->e:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/search/b/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/search/b/b;->g:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/dolphin/browser/search/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/dolphin/browser/search/b/b;->n:Z

    .line 121
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/search/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dolphin/browser/search/b/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/search/b/b;->g:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/dolphin/browser/search/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/search/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/dolphin/browser/search/b/b;->j()Lcom/dolphin/browser/search/b/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/dolphin/browser/search/b/b;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/b/b;->a(Lcom/dolphin/browser/search/b/b;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/search/b/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/dolphin/browser/search/b/b;->i:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 283
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/dolphin/browser/search/b/b;

    if-eqz v1, :cond_0

    .line 284
    check-cast p1, Lcom/dolphin/browser/search/b/b;

    .line 285
    iget-object v1, p0, Lcom/dolphin/browser/search/b/b;->h:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/b/b;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/dolphin/browser/search/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/dolphin/browser/search/b/b;->n:Z

    return v0
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/search/b/b;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/search/b/b;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/b/b;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    .line 146
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 147
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    iget-object v2, p0, Lcom/dolphin/browser/search/b/b;->m:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/dolphin/browser/search/b/b;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 150
    new-array v1, v3, [I

    iget-object v2, p0, Lcom/dolphin/browser/search/b/b;->f:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/dolphin/browser/search/b/b;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dolphin/browser/search/b/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/dolphin/browser/search/b/b;->e:I

    return v0
.end method

.method public i()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 218
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 221
    :try_start_0
    const-string v0, "id"

    iget v2, p0, Lcom/dolphin/browser/search/b/b;->a:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    const-string v0, "title"

    iget-object v2, p0, Lcom/dolphin/browser/search/b/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v0, "url"

    iget-object v2, p0, Lcom/dolphin/browser/search/b/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v0, "suggest"

    iget-object v2, p0, Lcom/dolphin/browser/search/b/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v0, "order"

    iget v2, p0, Lcom/dolphin/browser/search/b/b;->e:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 226
    const-string v0, "icon"

    iget-object v2, p0, Lcom/dolphin/browser/search/b/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v0, "encode"

    iget-object v2, p0, Lcom/dolphin/browser/search/b/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v0, "unique_name"

    iget-object v2, p0, Lcom/dolphin/browser/search/b/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v0, "force_default"

    iget-boolean v2, p0, Lcom/dolphin/browser/search/b/b;->j:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 230
    const-string v0, "force_default_to_unchanged_user"

    iget-boolean v2, p0, Lcom/dolphin/browser/search/b/b;->k:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 231
    const-string v0, "color"

    iget-object v2, p0, Lcom/dolphin/browser/search/b/b;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v0, "pressed_icon"

    iget-object v2, p0, Lcom/dolphin/browser/search/b/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v0, "selected"

    iget-boolean v2, p0, Lcom/dolphin/browser/search/b/b;->n:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 234
    const-string v0, "force_selected"

    iget-boolean v2, p0, Lcom/dolphin/browser/search/b/b;->o:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-object v1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public j()Lcom/dolphin/browser/search/b/b;
    .locals 2

    .prologue
    .line 302
    new-instance v0, Lcom/dolphin/browser/search/b/b;

    invoke-direct {v0}, Lcom/dolphin/browser/search/b/b;-><init>()V

    .line 303
    iget v1, p0, Lcom/dolphin/browser/search/b/b;->a:I

    iput v1, v0, Lcom/dolphin/browser/search/b/b;->a:I

    .line 304
    iget-object v1, p0, Lcom/dolphin/browser/search/b/b;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/dolphin/browser/search/b/b;->b:Ljava/lang/String;

    .line 305
    iget-object v1, p0, Lcom/dolphin/browser/search/b/b;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/dolphin/browser/search/b/b;->c:Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lcom/dolphin/browser/search/b/b;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/dolphin/browser/search/b/b;->d:Ljava/lang/String;

    .line 307
    iget v1, p0, Lcom/dolphin/browser/search/b/b;->e:I

    iput v1, v0, Lcom/dolphin/browser/search/b/b;->e:I

    .line 308
    iget-object v1, p0, Lcom/dolphin/browser/search/b/b;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/dolphin/browser/search/b/b;->f:Ljava/lang/String;

    .line 309
    iget-object v1, p0, Lcom/dolphin/browser/search/b/b;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/dolphin/browser/search/b/b;->g:Ljava/lang/String;

    .line 310
    iget-object v1, p0, Lcom/dolphin/browser/search/b/b;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/dolphin/browser/search/b/b;->h:Ljava/lang/String;

    .line 311
    iget-boolean v1, p0, Lcom/dolphin/browser/search/b/b;->i:Z

    iput-boolean v1, v0, Lcom/dolphin/browser/search/b/b;->i:Z

    .line 312
    iget-boolean v1, p0, Lcom/dolphin/browser/search/b/b;->j:Z

    iput-boolean v1, v0, Lcom/dolphin/browser/search/b/b;->j:Z

    .line 313
    iget-boolean v1, p0, Lcom/dolphin/browser/search/b/b;->k:Z

    iput-boolean v1, v0, Lcom/dolphin/browser/search/b/b;->k:Z

    .line 314
    iget-object v1, p0, Lcom/dolphin/browser/search/b/b;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/dolphin/browser/search/b/b;->l:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lcom/dolphin/browser/search/b/b;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/dolphin/browser/search/b/b;->m:Ljava/lang/String;

    .line 316
    iget-boolean v1, p0, Lcom/dolphin/browser/search/b/b;->n:Z

    iput-boolean v1, v0, Lcom/dolphin/browser/search/b/b;->n:Z

    .line 317
    iget-boolean v1, p0, Lcom/dolphin/browser/search/b/b;->o:Z

    iput-boolean v1, v0, Lcom/dolphin/browser/search/b/b;->o:Z

    .line 318
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/dolphin/browser/search/b/b;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

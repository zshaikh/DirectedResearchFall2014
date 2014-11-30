.class Lcom/dolphin/browser/search/f;
.super Landroid/database/AbstractCursor;
.source "OpenSearchSearchEngine.java"


# instance fields
.field private final a:Lorg/json/JSONArray;

.field private final b:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/dolphin/browser/search/f;->a:Lorg/json/JSONArray;

    .line 223
    iput-object p2, p0, Lcom/dolphin/browser/search/f;->b:Lorg/json/JSONArray;

    .line 224
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/search/f;->b:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/search/e;->d()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dolphin/browser/search/e;->e()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/dolphin/browser/search/f;->a:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 1

    .prologue
    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1

    .prologue
    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1

    .prologue
    .line 270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 2

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    iget v0, p0, Lcom/dolphin/browser/search/f;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 1

    .prologue
    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 238
    iget v0, p0, Lcom/dolphin/browser/search/f;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 239
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 241
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/search/f;->a:Lorg/json/JSONArray;

    iget v1, p0, Lcom/dolphin/browser/search/f;->mPos:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    const-string v1, "OpenSearchSearchEngine"

    const-string v2, "Error"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 247
    :try_start_1
    iget-object v0, p0, Lcom/dolphin/browser/search/f;->b:Lorg/json/JSONArray;

    iget v1, p0, Lcom/dolphin/browser/search/f;->mPos:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 248
    :catch_1
    move-exception v0

    .line 249
    const-string v1, "OpenSearchSearchEngine"

    const-string v2, "Error"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 251
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 252
    const v0, 0x7f0201aa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1

    .prologue
    .line 288
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

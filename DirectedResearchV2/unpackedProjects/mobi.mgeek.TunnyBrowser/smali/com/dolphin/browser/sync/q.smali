.class public Lcom/dolphin/browser/sync/q;
.super Lcom/dolphin/browser/sync/e;
.source "BookmarkItem.java"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:Z


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dolphin/browser/sync/q;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/dolphin/browser/sync/e;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/q;->f:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/q;->g:Ljava/lang/String;

    .line 34
    iput v1, p0, Lcom/dolphin/browser/sync/q;->h:I

    .line 35
    iput v1, p0, Lcom/dolphin/browser/sync/q;->i:I

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/sync/e;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sync/e;-><init>(Lcom/dolphin/browser/sync/e;)V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/q;->f:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/q;->g:Ljava/lang/String;

    .line 34
    iput v1, p0, Lcom/dolphin/browser/sync/q;->h:I

    .line 35
    iput v1, p0, Lcom/dolphin/browser/sync/q;->i:I

    .line 80
    return-void
.end method

.method static b(Lorg/json/JSONObject;)Lcom/dolphin/browser/sync/q;
    .locals 4

    .prologue
    .line 84
    :try_start_0
    new-instance v0, Lcom/dolphin/browser/sync/q;

    invoke-static {p0}, Lcom/dolphin/browser/sync/e;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/sync/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/sync/q;-><init>(Lcom/dolphin/browser/sync/e;)V

    .line 86
    const-string v1, "payload"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 87
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->i()I

    move-result v2

    if-nez v2, :cond_1

    .line 88
    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    invoke-virtual {v0, v2}, Lcom/dolphin/browser/sync/q;->e(Ljava/lang/String;)V

    .line 97
    :goto_0
    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/q;->d(Ljava/lang/String;)V

    .line 105
    :goto_1
    return-object v0

    .line 92
    :cond_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/sync/q;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v1, "BookmarkItem"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const/4 v0, 0x0

    goto :goto_1

    .line 95
    :cond_1
    :try_start_1
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/sync/q;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static c(Landroid/database/Cursor;)Lcom/dolphin/browser/sync/q;
    .locals 2

    .prologue
    .line 120
    invoke-static {p0}, Lcom/dolphin/browser/sync/q;->e(Landroid/database/Cursor;)V

    .line 121
    new-instance v0, Lcom/dolphin/browser/sync/q;

    invoke-static {p0}, Lcom/dolphin/browser/sync/e;->b(Landroid/database/Cursor;)Lcom/dolphin/browser/sync/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/sync/q;-><init>(Lcom/dolphin/browser/sync/e;)V

    .line 122
    sget v1, Lcom/dolphin/browser/sync/q;->b:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/q;->e(Ljava/lang/String;)V

    .line 123
    sget v1, Lcom/dolphin/browser/sync/q;->a:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/q;->d(Ljava/lang/String;)V

    .line 124
    sget v1, Lcom/dolphin/browser/sync/q;->c:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/q;->e(I)V

    .line 125
    sget v1, Lcom/dolphin/browser/sync/q;->d:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/q;->d(I)V

    .line 127
    return-object v0
.end method

.method static d(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, -0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-static {p0}, Lcom/dolphin/browser/sync/q;->c(Landroid/database/Cursor;)Lcom/dolphin/browser/sync/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_0
    return-object v0
.end method

.method private static e(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/dolphin/browser/sync/q;->e:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/q;->b:I

    .line 111
    const-string v0, "title"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/q;->a:I

    .line 112
    const-string v0, "folder"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/q;->c:I

    .line 113
    const-string v0, "type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/q;->d:I

    .line 115
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dolphin/browser/sync/q;->e:Z

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 49
    :try_start_0
    invoke-super {p0}, Lcom/dolphin/browser/sync/e;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/ao;->b()Lcom/dolphin/browser/sync/ag;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/dolphin/browser/sync/ag;->a(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 57
    const-string v1, "pid"

    invoke-virtual {p0}, Lcom/dolphin/browser/sync/q;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 60
    iget-object v2, p0, Lcom/dolphin/browser/sync/q;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    const-string v2, "url"

    iget-object v3, p0, Lcom/dolphin/browser/sync/q;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_0
    const-string v2, "title"

    iget-object v3, p0, Lcom/dolphin/browser/sync/q;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v1, "BookmarkItem"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/dolphin/browser/sync/e;->b()Landroid/content/ContentValues;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/ao;->b()Lcom/dolphin/browser/sync/ag;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/dolphin/browser/sync/ag;->a(Landroid/content/ContentValues;Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 144
    return-object v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Lcom/dolphin/browser/sync/q;->i:I

    .line 186
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    const-string p1, ""

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/sync/q;->f:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcom/dolphin/browser/sync/q;->h:I

    .line 190
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/dolphin/browser/sync/q;->g:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 211
    if-ne p0, p1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 214
    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 216
    goto :goto_0

    .line 217
    :cond_3
    check-cast p1, Lcom/dolphin/browser/sync/q;

    .line 219
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/q;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dolphin/browser/sync/q;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 220
    goto :goto_0

    .line 223
    :cond_4
    iget v2, p0, Lcom/dolphin/browser/sync/q;->h:I

    iget v3, p1, Lcom/dolphin/browser/sync/q;->h:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 224
    goto :goto_0

    .line 226
    :cond_5
    iget-object v2, p0, Lcom/dolphin/browser/sync/q;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/dolphin/browser/sync/q;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 227
    goto :goto_0

    .line 229
    :cond_6
    iget-object v2, p0, Lcom/dolphin/browser/sync/q;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/dolphin/browser/sync/q;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 230
    goto :goto_0

    .line 233
    :cond_7
    iget v2, p0, Lcom/dolphin/browser/sync/q;->i:I

    iget v3, p1, Lcom/dolphin/browser/sync/q;->i:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 234
    goto :goto_0

    .line 236
    :cond_8
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/q;->i()I

    move-result v2

    invoke-virtual {p1}, Lcom/dolphin/browser/sync/q;->i()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 237
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const v3, 0x10001

    .line 199
    .line 201
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/q;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 202
    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/dolphin/browser/sync/q;->i()I

    move-result v2

    add-int/2addr v0, v2

    .line 203
    mul-int v2, v3, v0

    iget-object v0, p0, Lcom/dolphin/browser/sync/q;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 204
    mul-int/2addr v0, v3

    iget-object v2, p0, Lcom/dolphin/browser/sync/q;->g:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 205
    return v0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/q;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sync/q;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/sync/q;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public k()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/dolphin/browser/sync/q;->i:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/sync/q;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/q;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/sync/q;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/q;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/dolphin/browser/sync/q;->i:I

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/dolphin/browser/sync/q;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/sync/q;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dolphin/browser/sync/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/sync/q;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dolphin/browser/sync/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/sync/q;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/sync/q;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

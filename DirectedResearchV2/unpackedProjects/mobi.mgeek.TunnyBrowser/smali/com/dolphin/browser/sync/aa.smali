.class public Lcom/dolphin/browser/sync/aa;
.super Lcom/dolphin/browser/sync/e;
.source "HistorySyncItem.java"


# static fields
.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:I

.field private static u:I

.field private static v:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dolphin/browser/sync/aa;->v:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Lcom/dolphin/browser/sync/e;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/aa;->a:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/aa;->b:Ljava/lang/String;

    .line 28
    iput v2, p0, Lcom/dolphin/browser/sync/aa;->c:I

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dolphin/browser/sync/aa;->d:J

    .line 32
    iput v2, p0, Lcom/dolphin/browser/sync/aa;->e:I

    .line 33
    iput v2, p0, Lcom/dolphin/browser/sync/aa;->f:I

    .line 34
    iput v2, p0, Lcom/dolphin/browser/sync/aa;->g:I

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/sync/e;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sync/e;-><init>(Lcom/dolphin/browser/sync/e;)V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/aa;->a:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/aa;->b:Ljava/lang/String;

    .line 28
    iput v2, p0, Lcom/dolphin/browser/sync/aa;->c:I

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dolphin/browser/sync/aa;->d:J

    .line 32
    iput v2, p0, Lcom/dolphin/browser/sync/aa;->e:I

    .line 33
    iput v2, p0, Lcom/dolphin/browser/sync/aa;->f:I

    .line 34
    iput v2, p0, Lcom/dolphin/browser/sync/aa;->g:I

    .line 133
    return-void
.end method

.method static b(Lorg/json/JSONObject;)Lcom/dolphin/browser/sync/aa;
    .locals 3

    .prologue
    .line 137
    :try_start_0
    new-instance v0, Lcom/dolphin/browser/sync/aa;

    invoke-static {p0}, Lcom/dolphin/browser/sync/e;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/sync/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/sync/aa;-><init>(Lcom/dolphin/browser/sync/e;)V

    .line 139
    const-string v1, "payload"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 140
    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v0, v2}, Lcom/dolphin/browser/sync/aa;->d(Ljava/lang/String;)V

    .line 142
    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {v0, v2}, Lcom/dolphin/browser/sync/aa;->e(Ljava/lang/String;)V

    .line 144
    const-string v2, "added_visit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/sync/aa;->d(I)V

    .line 145
    const-string v2, "update"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/sync/aa;->b(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v1, "HistorySyncItem"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Landroid/database/Cursor;)Lcom/dolphin/browser/sync/aa;
    .locals 3

    .prologue
    .line 194
    invoke-static {p0}, Lcom/dolphin/browser/sync/aa;->e(Landroid/database/Cursor;)V

    .line 195
    new-instance v0, Lcom/dolphin/browser/sync/aa;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/aa;-><init>()V

    .line 197
    sget v1, Lcom/dolphin/browser/sync/aa;->n:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/sync/aa;->b(J)V

    .line 198
    sget v1, Lcom/dolphin/browser/sync/aa;->o:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/sync/aa;->a(J)V

    .line 199
    sget v1, Lcom/dolphin/browser/sync/aa;->p:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/sync/aa;->c(J)V

    .line 200
    sget v1, Lcom/dolphin/browser/sync/aa;->m:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/aa;->b(Ljava/lang/String;)V

    .line 202
    sget v1, Lcom/dolphin/browser/sync/aa;->q:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/aa;->c(I)V

    .line 203
    sget v1, Lcom/dolphin/browser/sync/aa;->r:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/aa;->b(I)V

    .line 204
    sget v1, Lcom/dolphin/browser/sync/aa;->s:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/aa;->a(Ljava/lang/String;)V

    .line 205
    sget v1, Lcom/dolphin/browser/sync/aa;->t:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/aa;->c(Ljava/lang/String;)V

    .line 207
    sget v1, Lcom/dolphin/browser/sync/aa;->u:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/aa;->a(I)V

    .line 209
    sget v1, Lcom/dolphin/browser/sync/aa;->h:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/aa;->d(Ljava/lang/String;)V

    .line 210
    sget v1, Lcom/dolphin/browser/sync/aa;->i:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/aa;->e(Ljava/lang/String;)V

    .line 211
    sget v1, Lcom/dolphin/browser/sync/aa;->k:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/aa;->d(I)V

    .line 212
    sget v1, Lcom/dolphin/browser/sync/aa;->l:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/aa;->e(I)V

    .line 213
    sget v1, Lcom/dolphin/browser/sync/aa;->j:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/aa;->f(I)V

    .line 215
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
            "Lcom/dolphin/browser/sync/aa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, -0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-static {p0}, Lcom/dolphin/browser/sync/aa;->c(Landroid/database/Cursor;)Lcom/dolphin/browser/sync/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_0
    return-object v0
.end method

.method private static e(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 174
    sget-boolean v0, Lcom/dolphin/browser/sync/aa;->v:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/aa;->h:I

    .line 176
    const-string v0, "title"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/aa;->i:I

    .line 178
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/aa;->m:I

    .line 179
    const-string v0, "is_folder"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/aa;->q:I

    .line 180
    const-string v0, "date"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/aa;->n:I

    .line 181
    const-string v0, "created"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/aa;->o:I

    .line 183
    const-string v0, "_order"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/aa;->p:I

    .line 184
    const-string v0, "deleted"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/aa;->r:I

    .line 185
    const-string v0, "sync_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/aa;->s:I

    .line 186
    const-string v0, "parent_sync_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/aa;->t:I

    .line 187
    const-string v0, "sync_status"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/aa;->u:I

    .line 189
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dolphin/browser/sync/aa;->v:Z

    .line 191
    :cond_0
    return-void
.end method


# virtual methods
.method a()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 98
    :try_start_0
    invoke-super {p0}, Lcom/dolphin/browser/sync/e;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 99
    const-string v1, "type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/dolphin/browser/sync/aa;->b:Ljava/lang/String;

    .line 104
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 105
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 107
    :cond_0
    const-string v3, "title"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/aa;->l()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 111
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 113
    :cond_1
    const-string v3, "url"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v1, "update"

    iget-wide v3, p0, Lcom/dolphin/browser/sync/aa;->d:J

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 116
    const-string v1, "added_visit"

    iget v3, p0, Lcom/dolphin/browser/sync/aa;->f:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    const-string v1, "payload"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "HistorySyncItem"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 220
    invoke-super {p0}, Lcom/dolphin/browser/sync/e;->b()Landroid/content/ContentValues;

    move-result-object v0

    .line 221
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/ao;->d()Lcom/dolphin/browser/sync/ag;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/dolphin/browser/sync/ag;->a(Landroid/content/ContentValues;Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 222
    return-object v0
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/dolphin/browser/sync/aa;->d:J

    .line 44
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/dolphin/browser/sync/aa;->e:I

    .line 64
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/dolphin/browser/sync/aa;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/dolphin/browser/sync/aa;->f:I

    .line 72
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/dolphin/browser/sync/aa;->b:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/dolphin/browser/sync/aa;->g:I

    .line 80
    return-void
.end method

.method public g()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/dolphin/browser/sync/aa;->d:J

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/sync/aa;->b:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/sync/aa;->a:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/dolphin/browser/sync/aa;->e:I

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/dolphin/browser/sync/aa;->f:I

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/dolphin/browser/sync/aa;->c:I

    return v0
.end method

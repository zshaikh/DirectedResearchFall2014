.class public Lcom/dolphin/browser/sync/e;
.super Ljava/lang/Object;
.source "BaseSyncItem.java"


# static fields
.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:I

.field private static s:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/sync/e;->a:Ljava/lang/String;

    .line 65
    iput v3, p0, Lcom/dolphin/browser/sync/e;->b:I

    .line 66
    iput v3, p0, Lcom/dolphin/browser/sync/e;->c:I

    .line 67
    iput-wide v1, p0, Lcom/dolphin/browser/sync/e;->d:J

    .line 69
    iput-wide v1, p0, Lcom/dolphin/browser/sync/e;->e:J

    .line 70
    iput-wide v1, p0, Lcom/dolphin/browser/sync/e;->f:J

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/e;->g:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/e;->h:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/sync/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/sync/e;->a:Ljava/lang/String;

    .line 65
    iput v3, p0, Lcom/dolphin/browser/sync/e;->b:I

    .line 66
    iput v3, p0, Lcom/dolphin/browser/sync/e;->c:I

    .line 67
    iput-wide v1, p0, Lcom/dolphin/browser/sync/e;->d:J

    .line 69
    iput-wide v1, p0, Lcom/dolphin/browser/sync/e;->e:J

    .line 70
    iput-wide v1, p0, Lcom/dolphin/browser/sync/e;->f:J

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/e;->g:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/e;->h:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/dolphin/browser/sync/e;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/sync/e;->f:J

    .line 124
    iget-object v0, p1, Lcom/dolphin/browser/sync/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/sync/e;->a:Ljava/lang/String;

    .line 125
    iget-wide v0, p1, Lcom/dolphin/browser/sync/e;->e:J

    iput-wide v0, p0, Lcom/dolphin/browser/sync/e;->e:J

    .line 126
    iget v0, p1, Lcom/dolphin/browser/sync/e;->c:I

    iput v0, p0, Lcom/dolphin/browser/sync/e;->c:I

    .line 127
    iget v0, p1, Lcom/dolphin/browser/sync/e;->b:I

    iput v0, p0, Lcom/dolphin/browser/sync/e;->b:I

    .line 128
    iget-object v0, p1, Lcom/dolphin/browser/sync/e;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/sync/e;->h:Ljava/lang/String;

    .line 129
    iget-object v0, p1, Lcom/dolphin/browser/sync/e;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/sync/e;->g:Ljava/lang/String;

    .line 130
    iget-wide v0, p1, Lcom/dolphin/browser/sync/e;->d:J

    iput-wide v0, p0, Lcom/dolphin/browser/sync/e;->d:J

    .line 131
    iget v0, p1, Lcom/dolphin/browser/sync/e;->i:I

    iput v0, p0, Lcom/dolphin/browser/sync/e;->i:I

    .line 132
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 112
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/sync/e;
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    .line 136
    :try_start_0
    new-instance v0, Lcom/dolphin/browser/sync/e;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/e;-><init>()V

    .line 138
    const-string v1, "updated"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    mul-long/2addr v1, v3

    iput-wide v1, v0, Lcom/dolphin/browser/sync/e;->f:J

    .line 139
    const-string v1, "created"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    mul-long/2addr v1, v3

    iput-wide v1, v0, Lcom/dolphin/browser/sync/e;->e:J

    .line 140
    const-string v1, "order"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dolphin/browser/sync/e;->d:J

    .line 141
    const-string v1, "folder"

    invoke-static {p0, v1}, Lcom/dolphin/browser/sync/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/sync/e;->b:I

    .line 142
    const-string v1, "deleted"

    invoke-static {p0, v1}, Lcom/dolphin/browser/sync/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/sync/e;->c:I

    .line 143
    const-string v1, "_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/sync/e;->g:Ljava/lang/String;

    .line 144
    const-string v1, "pid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/sync/e;->h:Ljava/lang/String;

    .line 145
    const-string v1, "cid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/sync/e;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v1, "BaseSyncItem"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 168
    sget-boolean v0, Lcom/dolphin/browser/sync/e;->s:Z

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dolphin/browser/sync/e;->s:Z

    .line 174
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/e;->j:I

    .line 175
    const-string v0, "is_folder"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/e;->n:I

    .line 176
    const-string v0, "date"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/e;->k:I

    .line 177
    const-string v0, "created"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/e;->l:I

    .line 179
    const-string v0, "_order"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/e;->m:I

    .line 180
    const-string v0, "deleted"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/e;->o:I

    .line 181
    const-string v0, "sync_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/e;->p:I

    .line 182
    const-string v0, "parent_sync_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/e;->q:I

    .line 183
    const-string v0, "sync_status"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/dolphin/browser/sync/e;->r:I

    goto :goto_0
.end method

.method static b(Landroid/database/Cursor;)Lcom/dolphin/browser/sync/e;
    .locals 3

    .prologue
    .line 187
    invoke-static {p0}, Lcom/dolphin/browser/sync/e;->a(Landroid/database/Cursor;)V

    .line 189
    new-instance v0, Lcom/dolphin/browser/sync/e;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/e;-><init>()V

    .line 191
    sget v1, Lcom/dolphin/browser/sync/e;->k:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dolphin/browser/sync/e;->f:J

    .line 192
    sget v1, Lcom/dolphin/browser/sync/e;->l:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dolphin/browser/sync/e;->e:J

    .line 193
    sget v1, Lcom/dolphin/browser/sync/e;->m:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dolphin/browser/sync/e;->d:J

    .line 194
    sget v1, Lcom/dolphin/browser/sync/e;->j:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/sync/e;->a:Ljava/lang/String;

    .line 196
    sget v1, Lcom/dolphin/browser/sync/e;->n:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/sync/e;->b:I

    .line 197
    sget v1, Lcom/dolphin/browser/sync/e;->o:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/sync/e;->c:I

    .line 198
    sget v1, Lcom/dolphin/browser/sync/e;->p:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/sync/e;->g:Ljava/lang/String;

    .line 199
    sget v1, Lcom/dolphin/browser/sync/e;->q:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/sync/e;->h:Ljava/lang/String;

    .line 201
    sget v1, Lcom/dolphin/browser/sync/e;->r:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/sync/e;->i:I

    .line 203
    return-object v0
.end method


# virtual methods
.method a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 84
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 86
    const-string v1, "updated"

    iget-wide v2, p0, Lcom/dolphin/browser/sync/e;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 87
    const-string v1, "created"

    iget-wide v2, p0, Lcom/dolphin/browser/sync/e;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 88
    const-string v1, "order"

    iget-wide v2, p0, Lcom/dolphin/browser/sync/e;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    const-string v1, "folder"

    iget v2, p0, Lcom/dolphin/browser/sync/e;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    iget-object v1, p0, Lcom/dolphin/browser/sync/e;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/sync/e;->g:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const-string v1, "_id"

    iget-object v2, p0, Lcom/dolphin/browser/sync/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/sync/e;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dolphin/browser/sync/e;->h:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    const-string v1, "pid"

    iget-object v2, p0, Lcom/dolphin/browser/sync/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    :goto_0
    const-string v1, "deleted"

    iget v2, p0, Lcom/dolphin/browser/sync/e;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    const-string v1, "cid"

    iget-object v2, p0, Lcom/dolphin/browser/sync/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :goto_1
    return-object v0

    .line 97
    :cond_1
    const-string v1, "pid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v1, "BaseSyncItem"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 245
    iput p1, p0, Lcom/dolphin/browser/sync/e;->i:I

    .line 246
    return-void
.end method

.method public a(J)V
    .locals 0

    .prologue
    .line 269
    iput-wide p1, p0, Lcom/dolphin/browser/sync/e;->e:J

    .line 270
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/dolphin/browser/sync/e;->g:Ljava/lang/String;

    .line 238
    return-void
.end method

.method b()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 217
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 218
    const-string v1, "date"

    iget-wide v2, p0, Lcom/dolphin/browser/sync/e;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 219
    const-string v1, "created"

    iget-wide v2, p0, Lcom/dolphin/browser/sync/e;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 220
    const-string v1, "_order"

    iget-wide v2, p0, Lcom/dolphin/browser/sync/e;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    const-string v1, "is_folder"

    iget v2, p0, Lcom/dolphin/browser/sync/e;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    const-string v1, "deleted"

    iget v2, p0, Lcom/dolphin/browser/sync/e;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    const-string v1, "sync_id"

    iget-object v2, p0, Lcom/dolphin/browser/sync/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "parent_sync_id"

    iget-object v2, p0, Lcom/dolphin/browser/sync/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 277
    iput p1, p0, Lcom/dolphin/browser/sync/e;->c:I

    .line 278
    return-void
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 273
    iput-wide p1, p0, Lcom/dolphin/browser/sync/e;->f:J

    .line 274
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/dolphin/browser/sync/e;->a:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/sync/e;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/e;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 281
    iput p1, p0, Lcom/dolphin/browser/sync/e;->b:I

    .line 282
    return-void
.end method

.method public c(J)V
    .locals 0

    .prologue
    .line 289
    iput-wide p1, p0, Lcom/dolphin/browser/sync/e;->d:J

    .line 290
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/dolphin/browser/sync/e;->h:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/dolphin/browser/sync/e;->i:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/dolphin/browser/sync/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/dolphin/browser/sync/e;->e:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 257
    iget-wide v0, p0, Lcom/dolphin/browser/sync/e;->f:J

    return-wide v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/dolphin/browser/sync/e;->c:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/dolphin/browser/sync/e;->b:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/dolphin/browser/sync/e;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/e;->h:Ljava/lang/String;

    goto :goto_0
.end method

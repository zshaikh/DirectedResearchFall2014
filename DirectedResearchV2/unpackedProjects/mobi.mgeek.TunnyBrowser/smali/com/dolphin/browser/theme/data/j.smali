.class public Lcom/dolphin/browser/theme/data/j;
.super Ljava/lang/Object;
.source "DownloadBehavior.java"

# interfaces
.implements Lcom/dolphin/browser/theme/data/n;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Landroid/net/Uri;

.field protected c:I

.field protected d:I

.field protected e:Ljava/lang/String;

.field private f:Landroid/database/Cursor;

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dolphin/browser/theme/data/o;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:J

.field private k:J

.field private l:J

.field private m:Landroid/database/ContentObserver;

.field private n:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v1, Lcom/dolphin/browser/theme/data/k;

    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ar;->o()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/theme/data/k;-><init>(Lcom/dolphin/browser/theme/data/j;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/dolphin/browser/theme/data/j;->m:Landroid/database/ContentObserver;

    .line 176
    new-instance v0, Lcom/dolphin/browser/theme/data/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/data/l;-><init>(Lcom/dolphin/browser/theme/data/j;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/j;->n:Landroid/database/DataSetObserver;

    .line 70
    iput-object p2, p0, Lcom/dolphin/browser/theme/data/j;->a:Ljava/lang/String;

    .line 71
    iput p3, p0, Lcom/dolphin/browser/theme/data/j;->h:I

    .line 72
    iput p1, p0, Lcom/dolphin/browser/theme/data/j;->i:I

    .line 73
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/j;->b()V

    .line 74
    return-void
.end method

.method private static final a(II)Ljava/io/File;
    .locals 3

    .prologue
    .line 329
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v1

    .line 330
    if-nez p1, :cond_0

    const-string v0, "themes"

    .line 331
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 332
    new-instance v1, Ljava/io/File;

    const-string v2, "download_info"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 335
    if-nez v0, :cond_1

    .line 336
    const/4 v0, 0x0

    .line 340
    :goto_1
    return-object v0

    .line 330
    :cond_0
    const-string v0, "wallpapers"

    goto :goto_0

    .line 339
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(JJ)V
    .locals 6

    .prologue
    .line 97
    const/4 v5, 0x0

    .line 98
    iput-wide p1, p0, Lcom/dolphin/browser/theme/data/j;->k:J

    .line 99
    iput-wide p3, p0, Lcom/dolphin/browser/theme/data/j;->l:J

    .line 100
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 101
    long-to-float v0, p1

    long-to-float v1, p3

    div-float v5, v0, v1

    .line 103
    :cond_0
    const/high16 v0, 0x3f800000

    cmpl-float v0, v5, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/theme/data/j;->a(JJF)V

    .line 107
    return-void
.end method

.method private a(JJF)V
    .locals 7

    .prologue
    .line 384
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->g:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->g:Ljava/util/Set;

    .line 386
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/o;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .line 387
    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/theme/data/o;->a(JJF)V

    goto :goto_0

    .line 390
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/data/j;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/data/j;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/theme/data/j;->e:Ljava/lang/String;

    .line 191
    invoke-direct {p0}, Lcom/dolphin/browser/theme/data/j;->l()V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    const-string v2, "status"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 151
    invoke-static {v0}, Lcom/dolphin/browser/theme/data/j;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    iput-object v3, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    .line 156
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/theme/data/j;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/j;->g_()V

    .line 158
    invoke-direct {p0}, Lcom/dolphin/browser/theme/data/j;->m()V

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    const-string v3, "current_bytes"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 161
    iget-object v3, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    const-string v5, "total_bytes"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 162
    iget-object v5, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    const-string v7, "control"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 163
    iget-object v6, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    const-string v8, "speed"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 164
    iput v5, p0, Lcom/dolphin/browser/theme/data/j;->c:I

    .line 165
    iput-wide v6, p0, Lcom/dolphin/browser/theme/data/j;->j:J

    .line 166
    iput v0, p0, Lcom/dolphin/browser/theme/data/j;->d:I

    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    const-string v6, "_data"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/data/j;->a(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dolphin/browser/theme/data/j;->a(JJ)V

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 139
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 399
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 400
    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    const-string v3, "shared"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    sget v0, Lcom/dolphin/browser/theme/R$string;->download_sdcard_busy_dlg_msg:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    sget v1, Lcom/dolphin/browser/theme/R$string;->download_sdcard_busy_dlg_title:I

    .line 412
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x1080027

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/theme/R$string;->ok:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v2

    .line 418
    :cond_0
    return v0

    .line 409
    :cond_1
    sget v1, Lcom/dolphin/browser/theme/R$string;->download_no_sdcard_dlg_msg:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 410
    sget v1, Lcom/dolphin/browser/theme/R$string;->download_no_sdcard_dlg_title:I

    goto :goto_0
.end method

.method private k()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/theme/data/j;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/dolphin/browser/theme/data/j;->m:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/dolphin/browser/theme/data/j;->n:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 125
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    return-object v0

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/j;->g_()V

    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 312
    iget v0, p0, Lcom/dolphin/browser/theme/data/j;->i:I

    iget v1, p0, Lcom/dolphin/browser/theme/data/j;->h:I

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/data/j;->a(II)Ljava/io/File;

    move-result-object v1

    .line 313
    if-nez v1, :cond_0

    .line 326
    :goto_0
    return-void

    .line 316
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 318
    :try_start_0
    const-string v3, "download_uri"

    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->b:Landroid/net/Uri;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v3, "destfile"

    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/IOUtilities;->saveToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 318
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->e:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 323
    :catch_1
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->g:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->g:Ljava/util/Set;

    .line 359
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/o;

    .line 360
    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/o;->a()V

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->g:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->g:Ljava/util/Set;

    .line 368
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/o;

    .line 369
    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/o;->b()V

    goto :goto_0

    .line 372
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/dolphin/browser/theme/data/j;->b:Landroid/net/Uri;

    .line 251
    invoke-direct {p0}, Lcom/dolphin/browser/theme/data/j;->l()V

    .line 252
    return-void
.end method

.method public a(Lcom/dolphin/browser/theme/data/o;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->g:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/j;->g:Ljava/util/Set;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 196
    iget v0, p0, Lcom/dolphin/browser/theme/data/j;->i:I

    iget v1, p0, Lcom/dolphin/browser/theme/data/j;->h:I

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/data/j;->a(II)Ljava/io/File;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    const-string v0, "download_uri"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v2, "destfile"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/j;->b:Landroid/net/Uri;

    .line 207
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    iput-object v1, p0, Lcom/dolphin/browser/theme/data/j;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Lcom/dolphin/browser/theme/data/o;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->g:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c_()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e_()V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/dolphin/browser/theme/data/j;->k()Landroid/database/Cursor;

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/data/j;->a(Z)V

    .line 239
    return-void
.end method

.method public f_()I
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 255
    iget-object v3, p0, Lcom/dolphin/browser/theme/data/j;->b:Landroid/net/Uri;

    if-nez v3, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    iget-object v3, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    if-nez v3, :cond_2

    .line 259
    invoke-direct {p0}, Lcom/dolphin/browser/theme/data/j;->k()Landroid/database/Cursor;

    move-result-object v3

    .line 260
    if-eqz v3, :cond_0

    .line 264
    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/data/j;->a(Z)V

    .line 266
    :cond_2
    iget v3, p0, Lcom/dolphin/browser/theme/data/j;->c:I

    if-ne v3, v2, :cond_3

    move v0, v1

    .line 267
    goto :goto_0

    .line 269
    :cond_3
    iget v3, p0, Lcom/dolphin/browser/theme/data/j;->d:I

    .line 270
    const/16 v4, 0xbe

    if-eq v3, v4, :cond_4

    const/16 v4, 0xbf

    if-eq v3, v4, :cond_4

    const/16 v4, 0xc1

    if-ne v3, v4, :cond_5

    :cond_4
    move v0, v1

    .line 274
    goto :goto_0

    .line 275
    :cond_5
    iget-wide v3, p0, Lcom/dolphin/browser/theme/data/j;->k:J

    iget-wide v5, p0, Lcom/dolphin/browser/theme/data/j;->l:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_6

    move v0, v2

    .line 276
    goto :goto_0

    .line 278
    :cond_6
    iget-object v1, p0, Lcom/dolphin/browser/theme/data/j;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v2

    .line 279
    goto :goto_0

    .line 281
    :cond_7
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/dolphin/browser/theme/data/j;->e:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 283
    const/4 v0, 0x2

    goto :goto_0

    .line 285
    :cond_8
    iget-object v1, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/theme/data/j;->f:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 288
    goto :goto_0
.end method

.method public g_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    iget v0, p0, Lcom/dolphin/browser/theme/data/j;->i:I

    iget v1, p0, Lcom/dolphin/browser/theme/data/j;->h:I

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/data/j;->a(II)Ljava/io/File;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 300
    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->deleteFile(Ljava/io/File;)V

    .line 302
    :cond_0
    iput-object v2, p0, Lcom/dolphin/browser/theme/data/j;->b:Landroid/net/Uri;

    .line 303
    iput-object v2, p0, Lcom/dolphin/browser/theme/data/j;->e:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public i()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 376
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/j;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 377
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/theme/data/j;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/j;->g_()V

    .line 379
    invoke-direct {p0}, Lcom/dolphin/browser/theme/data/j;->n()V

    .line 381
    :cond_0
    return-void
.end method

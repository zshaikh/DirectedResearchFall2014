.class final Lcom/dolphin/browser/downloads/h;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadProvider.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/downloads/DownloadProvider;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/downloads/DownloadProvider;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 68
    iput-object p1, p0, Lcom/dolphin/browser/downloads/h;->a:Lcom/dolphin/browser/downloads/DownloadProvider;

    .line 69
    const-string v0, "downloads.db"

    const/4 v1, 0x0

    const/16 v2, 0x67

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 70
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    const-string v0, "downloads"

    const-string v1, "support_byte_range"

    const-string v2, "BOOLEAN"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "downloads"

    const-string v1, "speed"

    const-string v2, "INTEGER"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 129
    const-string v0, "downloads"

    const-string v1, "is_private_mode"

    const-string v2, "BOOLEAN"

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 133
    const-string v0, "downloads"

    const-string v1, "download_dir"

    const-string v2, "TEXT"

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 77
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "DownloadManager"

    const-string v1, "populating new database"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/downloads/h;->a:Lcom/dolphin/browser/downloads/DownloadProvider;

    invoke-static {v0, p1}, Lcom/dolphin/browser/downloads/DownloadProvider;->a(Lcom/dolphin/browser/downloads/DownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/downloads/h;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 121
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    .prologue
    .line 101
    const/16 v0, 0x65

    if-ge p2, v0, :cond_0

    .line 102
    invoke-direct {p0, p1}, Lcom/dolphin/browser/downloads/h;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 104
    :cond_0
    const/16 v0, 0x66

    if-ge p2, v0, :cond_1

    .line 105
    invoke-direct {p0, p1}, Lcom/dolphin/browser/downloads/h;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 107
    :cond_1
    const/16 v0, 0x67

    if-ge p2, v0, :cond_2

    .line 108
    invoke-direct {p0, p1}, Lcom/dolphin/browser/downloads/h;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 115
    :goto_0
    const-string v0, "DownloadProvider"

    const-string v1, "onUpgrade from %d to %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 116
    return-void

    .line 110
    :cond_2
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading downloads database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/downloads/h;->a:Lcom/dolphin/browser/downloads/DownloadProvider;

    invoke-static {v0, p1}, Lcom/dolphin/browser/downloads/DownloadProvider;->b(Lcom/dolphin/browser/downloads/DownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/downloads/h;->a:Lcom/dolphin/browser/downloads/DownloadProvider;

    invoke-static {v0, p1}, Lcom/dolphin/browser/downloads/DownloadProvider;->a(Lcom/dolphin/browser/downloads/DownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

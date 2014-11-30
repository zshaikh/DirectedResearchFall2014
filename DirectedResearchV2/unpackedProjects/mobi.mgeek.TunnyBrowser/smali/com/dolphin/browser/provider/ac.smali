.class public Lcom/dolphin/browser/provider/ac;
.super Ljava/lang/Object;
.source "SpeedDialManager.java"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/graphics/Bitmap;

.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/dolphin/browser/provider/ac;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    new-instance v3, Lcom/dolphin/browser/provider/ac;

    invoke-direct {v3}, Lcom/dolphin/browser/provider/ac;-><init>()V

    .line 86
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/dolphin/browser/provider/ac;->a:J

    .line 87
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/dolphin/browser/provider/ac;->b:Ljava/lang/String;

    .line 88
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/dolphin/browser/provider/ac;->c:Ljava/lang/String;

    .line 89
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/dolphin/browser/provider/ac;->f:Ljava/lang/String;

    .line 90
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 91
    if-eqz v2, :cond_0

    .line 93
    const/4 v4, 0x0

    :try_start_0
    array-length v5, v2

    invoke-static {v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v3, Lcom/dolphin/browser/provider/ac;->d:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    iput-boolean v0, v3, Lcom/dolphin/browser/provider/ac;->e:Z

    .line 99
    return-object v3

    .line 94
    :catch_0
    move-exception v2

    .line 95
    invoke-static {v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 98
    goto :goto_1
.end method

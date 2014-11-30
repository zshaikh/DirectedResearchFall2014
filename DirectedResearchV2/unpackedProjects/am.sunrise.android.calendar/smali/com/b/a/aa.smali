.class Lcom/b/a/aa;
.super Lcom/b/a/m;
.source "MediaStoreBitmapHunter.java"


# static fields
.field private static final o:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/a/aa;->o:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p6}, Lcom/b/a/m;-><init>(Landroid/content/Context;Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V

    .line 44
    return-void
.end method

.method static a(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 84
    .line 86
    :try_start_0
    sget-object v2, Lcom/b/a/aa;->o:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 95
    :cond_0
    if-eqz v1, :cond_1

    .line 96
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v6

    :cond_2
    :goto_0
    return v0

    .line 90
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 95
    if-eqz v1, :cond_2

    .line 96
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 95
    :goto_1
    if-eqz v0, :cond_4

    .line 96
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v6

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_5

    .line 96
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 95
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 91
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method static a(II)Lcom/b/a/ab;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/b/a/ab;->a:Lcom/b/a/ab;

    iget v0, v0, Lcom/b/a/ab;->e:I

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/b/a/ab;->a:Lcom/b/a/ab;

    iget v0, v0, Lcom/b/a/ab;->f:I

    if-gt p1, v0, :cond_0

    .line 76
    sget-object v0, Lcom/b/a/ab;->a:Lcom/b/a/ab;

    .line 80
    :goto_0
    return-object v0

    .line 77
    :cond_0
    sget-object v0, Lcom/b/a/ab;->b:Lcom/b/a/ab;

    iget v0, v0, Lcom/b/a/ab;->e:I

    if-gt p0, v0, :cond_1

    sget-object v0, Lcom/b/a/ab;->b:Lcom/b/a/ab;

    iget v0, v0, Lcom/b/a/ab;->f:I

    if-gt p1, v0, :cond_1

    .line 78
    sget-object v0, Lcom/b/a/ab;->b:Lcom/b/a/ab;

    goto :goto_0

    .line 80
    :cond_1
    sget-object v0, Lcom/b/a/ab;->c:Lcom/b/a/ab;

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/b/a/ap;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 47
    iget-object v0, p0, Lcom/b/a/aa;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 48
    iget-object v1, p1, Lcom/b/a/ap;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/b/a/aa;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/b/a/aa;->a(I)V

    .line 50
    invoke-virtual {p1}, Lcom/b/a/ap;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    iget v1, p1, Lcom/b/a/ap;->d:I

    iget v2, p1, Lcom/b/a/ap;->e:I

    invoke-static {v1, v2}, Lcom/b/a/aa;->a(II)Lcom/b/a/ab;

    move-result-object v1

    .line 52
    sget-object v2, Lcom/b/a/ab;->c:Lcom/b/a/ab;

    if-ne v1, v2, :cond_1

    .line 53
    invoke-super {p0, p1}, Lcom/b/a/m;->a(Lcom/b/a/ap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    iget-object v2, p1, Lcom/b/a/ap;->a:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 58
    invoke-static {p1}, Lcom/b/a/aa;->b(Lcom/b/a/ap;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 59
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 61
    iget v5, p1, Lcom/b/a/ap;->d:I

    iget v6, p1, Lcom/b/a/ap;->e:I

    iget v7, v1, Lcom/b/a/ab;->e:I

    iget v8, v1, Lcom/b/a/ab;->f:I

    invoke-static {v5, v6, v7, v8, v4}, Lcom/b/a/aa;->a(IIIILandroid/graphics/BitmapFactory$Options;)V

    .line 64
    iget v1, v1, Lcom/b/a/ab;->d:I

    invoke-static {v0, v2, v3, v1, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    .line 71
    :cond_2
    invoke-super {p0, p1}, Lcom/b/a/m;->a(Lcom/b/a/ap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.class public Lcom/facebook/orca/camera/gallery/ImageList;
.super Lcom/facebook/orca/camera/gallery/BaseImageList;
.source "ImageList.java"

# interfaces
.implements Lcom/facebook/orca/camera/gallery/IImageList;


# static fields
.field static final a:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string v1, "image/png"

    aput-object v1, v0, v3

    const-string v1, "image/gif"

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/orca/camera/gallery/ImageList;->i:[Ljava/lang/String;

    .line 96
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "datetaken"

    aput-object v1, v0, v4

    const-string v1, "mini_thumb_magic"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/camera/gallery/ImageList;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/facebook/orca/camera/gallery/BaseImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 64
    iput-object p3, p0, Lcom/facebook/orca/camera/gallery/ImageList;->g:Landroid/net/Uri;

    .line 65
    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)J
    .locals 2

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected b(Landroid/database/Cursor;)Lcom/facebook/orca/camera/gallery/BaseImage;
    .locals 19

    .prologue
    .line 122
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 123
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 124
    const/4 v3, 0x2

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 125
    const-wide/16 v8, 0x0

    cmp-long v5, v3, v8

    if-nez v5, :cond_2

    .line 126
    const/4 v3, 0x7

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v8, 0x3e8

    mul-long/2addr v3, v8

    move-wide v14, v3

    .line 128
    :goto_0
    const/4 v3, 0x3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 129
    const/4 v3, 0x4

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 130
    const/4 v3, 0x5

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 131
    const/4 v4, 0x6

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 132
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object/from16 v16, v10

    .line 136
    :goto_1
    new-instance v3, Lcom/facebook/orca/camera/gallery/Image;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/camera/gallery/ImageList;->b:Landroid/content/ContentResolver;

    move-object v5, v0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/camera/gallery/ImageList;->a(J)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v4, p0

    move-object/from16 v17, v16

    invoke-direct/range {v3 .. v18}, Lcom/facebook/orca/camera/gallery/Image;-><init>(Lcom/facebook/orca/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    return-object v3

    :cond_1
    move-object/from16 v16, v3

    goto :goto_1

    :cond_2
    move-wide v14, v3

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/ImageList;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "(mime_type in (?, ?, ?))"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "(mime_type in (?, ?, ?)) AND bucket_id = ?"

    goto :goto_0
.end method

.method protected d()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/ImageList;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/facebook/orca/camera/gallery/ImageList;->i:[Ljava/lang/String;

    array-length v0, v0

    .line 80
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 81
    sget-object v2, Lcom/facebook/orca/camera/gallery/ImageList;->i:[Ljava/lang/String;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iget-object v2, p0, Lcom/facebook/orca/camera/gallery/ImageList;->f:Ljava/lang/String;

    aput-object v2, v1, v0

    move-object v0, v1

    .line 85
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/orca/camera/gallery/ImageList;->i:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected e()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/ImageList;->b:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/ImageList;->d:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/orca/camera/gallery/ImageList;->a:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/orca/camera/gallery/ImageList;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/orca/camera/gallery/ImageList;->d()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/facebook/orca/camera/gallery/ImageList;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 93
    return-object v0
.end method

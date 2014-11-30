.class public Lcom/facebook/orca/photos/picking/PickMediaOperation;
.super Landroid/support/v4/app/Fragment;
.source "PickMediaOperation.java"


# instance fields
.field private a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

.field private b:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

.field private c:Lcom/facebook/orca/photos/picking/PickMediaParams;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:J

    .line 75
    return-void
.end method

.method private A()Ljava/io/File;
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private B()Ljava/io/File;
    .locals 2

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private C()V
    .locals 1

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->A()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 415
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->B()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 416
    return-void
.end method

.method private D()V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 427
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;->b()V

    .line 430
    :cond_0
    return-void
.end method

.method private E()V
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 434
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;->a()V

    .line 437
    :cond_0
    return-void
.end method

.method private F()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 441
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;->c()V

    .line 444
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/attachments/MediaResource;)V
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 420
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;->a(Lcom/facebook/orca/attachments/MediaResource;)V

    .line 423
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->g()V

    return-void
.end method

.method private a(Lcom/google/common/io/InputSupplier;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lcom/facebook/orca/photos/picking/PickMediaOperation$2;

    invoke-direct {v0, p0, p2}, Lcom/facebook/orca/photos/picking/PickMediaOperation$2;-><init>(Lcom/facebook/orca/photos/picking/PickMediaOperation;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/common/io/ByteStreams;->a(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J

    .line 215
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->s()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->t()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->u()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->v()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->D()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->w()V

    .line 151
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->A()Ljava/io/File;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    const-string v2, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 154
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    .line 156
    return-void
.end method

.method static synthetic g(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->F()V

    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->w()V

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    .line 163
    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->w()V

    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/images/ImageSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    .line 169
    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    const-string v1, "android.intent.extra.durationLimit"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    .line 180
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/attachments/AudioRecorderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    .line 186
    return-void
.end method

.method private w()V
    .locals 3

    .prologue
    .line 195
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->y()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 198
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->z()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    const-string v1, "Exception opening files"

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private x()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 371
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->A()Ljava/io/File;

    move-result-object v0

    .line 372
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->B()Ljava/io/File;

    move-result-object v1

    .line 374
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/facebook/orca/camera/CropImage;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "image/*"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v0, "outputX"

    iget-object v3, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v3}, Lcom/facebook/orca/photos/picking/PickMediaParams;->c()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    const-string v0, "outputY"

    iget-object v3, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v3}, Lcom/facebook/orca/photos/picking/PickMediaParams;->d()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    const-string v0, "aspectX"

    iget-object v3, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v3}, Lcom/facebook/orca/photos/picking/PickMediaParams;->e()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-string v0, "aspectY"

    iget-object v3, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v3}, Lcom/facebook/orca/photos/picking/PickMediaParams;->f()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    const-string v0, "scale"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 381
    const-string v0, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 382
    const-string v0, "outputFormat"

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->A()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/attachments/MediaResource;)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-virtual {p0, v2, v5}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private y()Ljava/lang/String;
    .locals 3

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp-compose-photo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private z()Ljava/lang/String;
    .locals 3

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp-compose-photo-post-cropped_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 356
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(ILandroid/content/Intent;)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 358
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b(ILandroid/content/Intent;)V

    goto :goto_0

    .line 359
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 360
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c(ILandroid/content/Intent;)V

    goto :goto_0

    .line 361
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 362
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d(ILandroid/content/Intent;)V

    goto :goto_0

    .line 363
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 364
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->e(ILandroid/content/Intent;)V

    goto :goto_0

    .line 365
    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 366
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->f(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 218
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_1

    .line 223
    const-string v2, "orca:PickMediaOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got attachment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->A()Ljava/io/File;

    move-result-object v0

    .line 226
    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaAttachment;->b()Lcom/google/common/io/InputSupplier;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->y()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/google/common/io/InputSupplier;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->x()V

    .line 242
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->a(Ljava/io/File;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/attachments/MediaResource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string v1, "orca:PickMediaOperation"

    const-string v2, "Got IOException while trying to process file"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->D()V

    goto :goto_0

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->E()V

    goto :goto_0

    .line 240
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->D()V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 79
    invoke-static {p1}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    .line 80
    const-class v1, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    .line 81
    return-void
.end method

.method public a(Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    .line 104
    return-void
.end method

.method public a(Lcom/facebook/orca/photos/picking/PickMediaParams;)V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaParams;

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "orca:PickMediaOperation"

    const-string v1, "Photo operation already in progress. Shouldn\'t happen"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 114
    new-instance v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;

    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->g()Ljava/util/EnumSet;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 117
    new-instance v1, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;-><init>(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;)V

    .line 146
    invoke-virtual {v0}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->show()V

    .line 147
    return-void
.end method

.method public b(ILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 245
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/picking/PickMediaParams;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->x()V

    .line 261
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->C()V

    .line 265
    :goto_1
    return-void

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->A()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->a(Ljava/io/File;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/attachments/MediaResource;)V

    goto :goto_0

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->D()V

    goto :goto_1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 94
    const-string v0, "params"

    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 95
    const-string v0, "uniqueId"

    iget-wide v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 96
    return-void
.end method

.method public c(ILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 268
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 269
    const/4 v0, 0x0

    .line 271
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 272
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->A()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 273
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/common/io/Files;->a(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->y()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/google/common/io/InputSupplier;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->x()V

    .line 287
    :goto_1
    return-void

    .line 275
    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 276
    :goto_2
    const-string v2, "orca:PickMediaOperation"

    const-string v3, "Got IOException while trying to process file"

    invoke-static {v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->D()V

    move-object v0, v1

    goto :goto_0

    .line 282
    :cond_0
    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->a(Ljava/io/File;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/attachments/MediaResource;)V

    goto :goto_1

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->D()V

    goto :goto_1

    .line 275
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    const-string v0, "params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/picking/PickMediaParams;

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 88
    const-string v0, "uniqueId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:J

    .line 90
    :cond_0
    return-void
.end method

.method public d(ILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 290
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->B()Ljava/io/File;

    move-result-object v0

    .line 292
    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->a(Ljava/io/File;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/attachments/MediaResource;)V

    .line 293
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->C()V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->D()V

    goto :goto_0
.end method

.method public e(ILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 300
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->D()V

    .line 324
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->b(Landroid/net/Uri;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 308
    if-nez v0, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->E()V

    goto :goto_0

    .line 313
    :cond_1
    const-string v1, "orca:PickMediaOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got video attachment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaAttachment;->d()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->A()Ljava/io/File;

    move-result-object v1

    .line 316
    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaAttachment;->b()Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->y()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/google/common/io/InputSupplier;Ljava/lang/String;)V

    .line 318
    invoke-static {v1}, Lcom/facebook/orca/attachments/MediaResource;->b(Ljava/io/File;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/attachments/MediaResource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    const-string v1, "orca:PickMediaOperation"

    const-string v2, "Got IOException while trying to process file"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->D()V

    goto :goto_0
.end method

.method public f(ILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 328
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->D()V

    .line 351
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->c(Landroid/net/Uri;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v1

    .line 336
    if-nez v1, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->E()V

    goto :goto_0

    .line 341
    :cond_1
    const-string v2, "orca:PickMediaOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got audio attachment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->A()Ljava/io/File;

    move-result-object v0

    .line 344
    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaAttachment;->b()Lcom/google/common/io/InputSupplier;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->y()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/google/common/io/InputSupplier;Ljava/lang/String;)V

    .line 346
    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->c(Ljava/io/File;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/attachments/MediaResource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    const-string v1, "orca:PickMediaOperation"

    const-string v2, "Got IOException while trying to process file"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->D()V

    goto :goto_0
.end method

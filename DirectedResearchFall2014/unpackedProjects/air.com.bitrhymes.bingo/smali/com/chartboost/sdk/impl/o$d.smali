.class Lcom/chartboost/sdk/impl/o$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/File;

.field private c:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->a:Ljava/io/File;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->b:Ljava/io/File;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->c:Ljava/io/File;

    .line 397
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/o$d;->a(Landroid/content/Context;)V

    .line 398
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const-string v4, "images"

    const-string v3, "__chartboost"

    .line 401
    if-nez p1, :cond_0

    .line 434
    :goto_0
    return-void

    .line 406
    :cond_0
    :try_start_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 407
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 408
    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 410
    :goto_1
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 411
    const-string v1, "mounted"

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    const-string v0, "cache"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->b:Ljava/io/File;

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->b:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 414
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$d;->b:Ljava/io/File;

    const-string v2, "__chartboost"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->b:Ljava/io/File;

    .line 415
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$d;->b:Ljava/io/File;

    const-string v2, "images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->b:Ljava/io/File;

    .line 416
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->b:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->c:Ljava/io/File;

    .line 425
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->c:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 426
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$d;->c:Ljava/io/File;

    const-string v2, "__chartboost"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->c:Ljava/io/File;

    .line 427
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$d;->c:Ljava/io/File;

    const-string v2, "images"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->c:Ljava/io/File;

    .line 428
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 429
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->b:Ljava/io/File;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->b:Ljava/io/File;

    :goto_3
    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->a:Ljava/io/File;

    goto :goto_0

    .line 408
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 419
    :catch_0
    move-exception v0

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->b:Ljava/io/File;

    goto :goto_2

    .line 433
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->c:Ljava/io/File;

    goto :goto_3
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter

    .prologue
    .line 437
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->a:Ljava/io/File;

    if-nez v0, :cond_0

    .line 438
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/o$d;->a(Landroid/content/Context;)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->a:Ljava/io/File;

    if-nez v0, :cond_1

    .line 440
    const/4 v0, 0x0

    .line 443
    :goto_0
    return-object v0

    .line 442
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o$d;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 447
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->a:Ljava/io/File;

    if-nez v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->b:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_2

    .line 454
    array-length v1, v0

    move v2, v4

    :goto_1
    if-lt v2, v1, :cond_3

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->c:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o$d;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_0

    .line 461
    array-length v1, v0

    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 462
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 454
    :cond_3
    aget-object v3, v0, v2

    .line 455
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 465
    :catch_0
    move-exception v0

    goto :goto_0
.end method

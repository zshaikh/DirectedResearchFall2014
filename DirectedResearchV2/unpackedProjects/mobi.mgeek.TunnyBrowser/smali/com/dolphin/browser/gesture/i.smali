.class public Lcom/dolphin/browser/gesture/i;
.super Ljava/util/Observable;
.source "GestureManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/gesture/i;

.field private static l:Lcom/dolphin/browser/gesture/h;

.field private static m:Ljava/io/File;

.field private static n:Ljava/io/File;


# instance fields
.field private b:Lcom/dolphin/browser/gesture/h;

.field private c:Lcom/dolphin/browser/gesture/h;

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;

.field private f:Landroid/content/Context;

.field private g:Landroid/content/SharedPreferences;

.field private h:Landroid/content/SharedPreferences;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/i;->i:Z

    .line 659
    new-instance v0, Lcom/dolphin/browser/gesture/j;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/j;-><init>(Lcom/dolphin/browser/gesture/i;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/i;->k:Ljava/util/Comparator;

    .line 720
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/i;->o:Ljava/util/Map;

    .line 100
    iput-object p1, p0, Lcom/dolphin/browser/gesture/i;->f:Landroid/content/Context;

    .line 101
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->getDataDir()Ljava/io/File;

    move-result-object v0

    .line 102
    const-string v1, "gesture_count"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/gesture/i;->g:Landroid/content/SharedPreferences;

    .line 103
    const-string v1, "gesture"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/gesture/i;->h:Landroid/content/SharedPreferences;

    .line 104
    iget-object v1, p0, Lcom/dolphin/browser/gesture/i;->h:Landroid/content/SharedPreferences;

    const-string v2, "gesture_guidance_mode"

    iget-boolean v3, p0, Lcom/dolphin/browser/gesture/i;->i:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dolphin/browser/gesture/i;->i:Z

    .line 105
    invoke-static {}, Lcom/dolphin/browser/gesture/i;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v1

    const-string v2, "tunnybrowser_gestures_yandex"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/gesture/i;->j:Ljava/lang/String;

    .line 110
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "tunnybrowser_gestures"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dolphin/browser/gesture/i;->d:Ljava/io/File;

    .line 111
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "tunnybrowser_gestures"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dolphin/browser/gesture/i;->e:Ljava/io/File;

    .line 112
    new-instance v1, Ljava/io/File;

    const-string v2, "gesture_marked"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/dolphin/browser/gesture/i;->m:Ljava/io/File;

    .line 113
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "gesture_marked"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/dolphin/browser/gesture/i;->n:Ljava/io/File;

    .line 115
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->w()Z

    .line 116
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->r()V

    .line 117
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->m()V

    .line 118
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->l()V

    .line 119
    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v1

    const-string v2, "tunnybrowser_gestures"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/gesture/i;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/gesture/h;Lcom/dolphin/browser/gesture/Gesture;FF)Lcom/dolphin/browser/gesture/ae;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 368
    if-nez p2, :cond_0

    .line 387
    :goto_0
    return-object v2

    .line 371
    :cond_0
    invoke-virtual {p1, p2}, Lcom/dolphin/browser/gesture/h;->a(Lcom/dolphin/browser/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v0

    .line 374
    invoke-virtual {p2}, Lcom/dolphin/browser/gesture/Gesture;->b()I

    move-result v3

    .line 375
    const/4 v1, 0x1

    if-le v3, v1, :cond_2

    .line 376
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 377
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/ae;

    .line 378
    iget-object v1, v0, Lcom/dolphin/browser/gesture/ae;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/dolphin/browser/gesture/h;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 379
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {v1}, Lcom/dolphin/browser/gesture/Gesture;->b()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-wide v5, v0, Lcom/dolphin/browser/gesture/ae;->b:D

    float-to-double v7, p4

    cmpl-double v1, v5, v7

    if-lez v1, :cond_1

    :goto_2
    move-object v2, v0

    .line 387
    goto :goto_0

    :cond_2
    move p4, p3

    .line 375
    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method public static a()Lcom/dolphin/browser/gesture/i;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/dolphin/browser/gesture/i;->a:Lcom/dolphin/browser/gesture/i;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/dolphin/browser/gesture/i;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/gesture/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/gesture/i;->a:Lcom/dolphin/browser/gesture/i;

    .line 96
    :cond_0
    sget-object v0, Lcom/dolphin/browser/gesture/i;->a:Lcom/dolphin/browser/gesture/i;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 692
    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 696
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 697
    :try_start_2
    invoke-static {v3, v1}, Lcom/dolphin/browser/util/IOUtilities;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 703
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 704
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 706
    :goto_0
    return-void

    .line 698
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 699
    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 703
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 704
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 700
    :catch_1
    move-exception v0

    move-object v3, v2

    .line 701
    :goto_2
    :try_start_4
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 703
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 704
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 703
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_3
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 704
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    .line 703
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_3

    .line 700
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 698
    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 590
    .line 591
    invoke-static {}, Lcom/dolphin/browser/gesture/i;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    const-string v2, "gesture_config_yandex"

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/gesture/i;->f:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    const-string v2, "GestureManager"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 599
    if-eqz v2, :cond_2

    move v0, v1

    .line 600
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 601
    aget-object v3, v2, v0

    .line 602
    const-string v4, "GestureManager"

    invoke-static {v4, v3}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-direct {p0, p1, v3}, Lcom/dolphin/browser/gesture/i;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 604
    invoke-direct {p0, v3}, Lcom/dolphin/browser/gesture/i;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 605
    new-instance v4, Lcom/dolphin/browser/gesture/k;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/dolphin/browser/gesture/k;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 594
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    const-string v2, "gesture_config"

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 611
    :cond_2
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->n()Ljava/util/List;

    move-result-object v0

    .line 613
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/a/a;

    .line 614
    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/dolphin/browser/gesture/i;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 615
    new-instance v4, Lcom/dolphin/browser/gesture/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/dolphin/browser/gesture/k;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    add-int/lit8 v0, v2, 0x1

    .line 618
    :goto_3
    const/4 v2, 0x3

    if-lt v0, v2, :cond_4

    .line 622
    :cond_3
    return-void

    :cond_4
    move v2, v0

    .line 619
    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 631
    if-eqz p1, :cond_1

    .line 632
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 633
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    const/4 v0, 0x1

    .line 638
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/dolphin/browser/gesture/h;Lcom/dolphin/browser/gesture/Gesture;FF)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/gesture/h;",
            "Lcom/dolphin/browser/gesture/Gesture;",
            "FF)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/gesture/ae;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 450
    if-nez p2, :cond_0

    move-object v0, v2

    .line 469
    :goto_0
    return-object v0

    .line 454
    :cond_0
    invoke-virtual {p1, p2}, Lcom/dolphin/browser/gesture/h;->a(Lcom/dolphin/browser/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v0

    .line 456
    invoke-virtual {p2}, Lcom/dolphin/browser/gesture/Gesture;->b()I

    move-result v3

    .line 457
    const/4 v1, 0x1

    if-le v3, v1, :cond_3

    .line 458
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/ae;

    .line 459
    iget-object v1, v0, Lcom/dolphin/browser/gesture/ae;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/dolphin/browser/gesture/h;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 460
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {v1}, Lcom/dolphin/browser/gesture/Gesture;->b()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-wide v5, v0, Lcom/dolphin/browser/gesture/ae;->b:D

    float-to-double v7, p4

    cmpl-double v1, v5, v7

    if-lez v1, :cond_1

    .line 463
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    :cond_2
    move-object v0, v2

    .line 469
    goto :goto_0

    :cond_3
    move p4, p3

    .line 457
    goto :goto_1
.end method

.method private c(Lcom/dolphin/browser/gesture/Gesture;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/gesture/Gesture;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v1, 0x3f000000

    .line 436
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/dolphin/browser/gesture/i;->b(Lcom/dolphin/browser/gesture/h;Lcom/dolphin/browser/gesture/Gesture;FF)Ljava/util/List;

    move-result-object v2

    .line 438
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 439
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 440
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x4

    if-ge v1, v0, :cond_0

    .line 441
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/ae;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ae;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 443
    :cond_0
    return-object v3
.end method

.method private i(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/h;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 280
    invoke-static {}, Lcom/dolphin/browser/util/dt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private k(Ljava/lang/String;)Lcom/dolphin/browser/gesture/Gesture;
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->c:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/h;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 551
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/Gesture;

    .line 553
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 122
    const-string v0, "bookmark"

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/i;->c(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->f:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v1, 0x7f060003

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/gesture/e;->a(Landroid/content/Context;IZ)Lcom/dolphin/browser/gesture/h;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/i;->c:Lcom/dolphin/browser/gesture/h;

    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->c:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/h;->b()Z

    .line 139
    return-void
.end method

.method private n()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/gesture/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/h;->c()Ljava/util/Set;

    move-result-object v0

    .line 345
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-static {}, Lcom/dolphin/browser/gesture/a;->a()Lcom/dolphin/browser/gesture/a;

    move-result-object v2

    .line 347
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/gesture/a;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/gesture/a/a;->d()Ljava/util/Comparator;

    move-result-object v0

    .line 354
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 355
    return-object v1
.end method

.method private o()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 422
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 423
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/i;->i()Ljava/util/List;

    move-result-object v1

    .line 424
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 425
    const/4 v4, 0x4

    if-ge v1, v4, :cond_0

    .line 426
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 432
    :cond_0
    return-object v2
.end method

.method private static p()Z
    .locals 1

    .prologue
    .line 626
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/bn;->c()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-static {v0}, Lcom/dolphin/browser/search/h;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private q()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 642
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 643
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 644
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 645
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 646
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 647
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 648
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    iget-object v4, p0, Lcom/dolphin/browser/gesture/i;->g:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->k:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 656
    return-object v2
.end method

.method private r()V
    .locals 2

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->s()V

    .line 672
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->e:Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/gesture/e;->a(Ljava/io/File;Z)Lcom/dolphin/browser/gesture/h;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    .line 673
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/h;->b()Z

    .line 674
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/i;->e:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/IOUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 682
    :catch_0
    move-exception v0

    .line 683
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/i;->e:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/i;->e:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0
.end method

.method private t()V
    .locals 0

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/i;->setChanged()V

    .line 710
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/i;->notifyObservers()V

    .line 711
    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    .line 723
    sget-object v0, Lcom/dolphin/browser/gesture/i;->l:Lcom/dolphin/browser/gesture/h;

    if-nez v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->f:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v1, 0x7f060044

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/gesture/e;->a(Landroid/content/Context;IZ)Lcom/dolphin/browser/gesture/h;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/gesture/i;->l:Lcom/dolphin/browser/gesture/h;

    .line 725
    sget-object v0, Lcom/dolphin/browser/gesture/i;->l:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/h;->b()Z

    .line 727
    :cond_0
    return-void
.end method

.method private v()Z
    .locals 4

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->x()V

    .line 791
    const/4 v1, 0x0

    .line 793
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/dolphin/browser/gesture/i;->n:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    :try_start_1
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 795
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 796
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 797
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 798
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 801
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 802
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 804
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 806
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 800
    :cond_0
    const/4 v0, 0x1

    .line 804
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 801
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private w()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 811
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->x()V

    .line 812
    const/4 v3, 0x0

    .line 814
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    sget-object v4, Lcom/dolphin/browser/gesture/i;->n:Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v1, v0

    .line 816
    :goto_0
    if-ge v1, v3, :cond_0

    .line 817
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 818
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 819
    iget-object v6, p0, Lcom/dolphin/browser/gesture/i;->o:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 816
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 821
    :cond_0
    const/4 v0, 0x1

    .line 825
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 827
    :goto_1
    return v0

    .line 822
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 823
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 825
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 822
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private x()V
    .locals 2

    .prologue
    .line 831
    sget-object v0, Lcom/dolphin/browser/gesture/i;->n:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 832
    sget-object v0, Lcom/dolphin/browser/gesture/i;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/gesture/i;->m:Ljava/io/File;

    sget-object v1, Lcom/dolphin/browser/gesture/i;->n:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/IOUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 835
    :catch_0
    move-exception v0

    .line 836
    const-string v0, "gesture_marked"

    sget-object v1, Lcom/dolphin/browser/gesture/i;->n:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 839
    :cond_1
    const-string v0, "gesture_marked"

    sget-object v1, Lcom/dolphin/browser/gesture/i;->n:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/Gesture;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-object v0

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/gesture/h;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 181
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/Gesture;

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/gesture/Gesture;FF)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 507
    if-nez p1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-object v0

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/dolphin/browser/gesture/i;->a(Lcom/dolphin/browser/gesture/h;Lcom/dolphin/browser/gesture/Gesture;FF)Lcom/dolphin/browser/gesture/ae;

    move-result-object v1

    .line 513
    if-eqz v1, :cond_0

    .line 514
    iget-object v0, v1, Lcom/dolphin/browser/gesture/ae;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/gesture/Gesture;FFZ)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4014000000000000L

    .line 477
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/dolphin/browser/gesture/i;->a(Lcom/dolphin/browser/gesture/h;Lcom/dolphin/browser/gesture/Gesture;FF)Lcom/dolphin/browser/gesture/ae;

    move-result-object v1

    .line 478
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->c:Lcom/dolphin/browser/gesture/h;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/dolphin/browser/gesture/i;->a(Lcom/dolphin/browser/gesture/h;Lcom/dolphin/browser/gesture/Gesture;FF)Lcom/dolphin/browser/gesture/ae;

    move-result-object v0

    .line 480
    if-nez v1, :cond_1

    .line 499
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 500
    iget-object v0, v0, Lcom/dolphin/browser/gesture/ae;->a:Ljava/lang/String;

    .line 502
    :goto_1
    return-object v0

    .line 482
    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    .line 483
    goto :goto_0

    .line 485
    :cond_2
    if-eqz p4, :cond_3

    .line 486
    iget-wide v2, v1, Lcom/dolphin/browser/gesture/ae;->b:D

    iget-wide v4, v0, Lcom/dolphin/browser/gesture/ae;->b:D

    add-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    move-object v0, v1

    .line 487
    goto :goto_0

    .line 492
    :cond_3
    iget-wide v2, v0, Lcom/dolphin/browser/gesture/ae;->b:D

    iget-wide v4, v1, Lcom/dolphin/browser/gesture/ae;->b:D

    add-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    move-object v0, v1

    .line 495
    goto :goto_0

    .line 502
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/dolphin/browser/gesture/Gesture;Z)Ljava/lang/String;
    .locals 1

    .prologue
    const v0, 0x3f333333

    .line 473
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/dolphin/browser/gesture/i;->a(Lcom/dolphin/browser/gesture/Gesture;FFZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/gesture/Gesture;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/gesture/Gesture;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v0, 0x0

    .line 392
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/i;->c(Lcom/dolphin/browser/gesture/Gesture;)Ljava/util/List;

    move-result-object v1

    .line 395
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->o()Ljava/util/List;

    move-result-object v2

    .line 398
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 399
    const/4 v4, 0x2

    .line 400
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 401
    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 402
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v1, v6, :cond_2

    .line 403
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_1

    .line 406
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 407
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v2, v6, :cond_2

    .line 408
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 410
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v4, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v4, :cond_2

    .line 411
    invoke-interface {v1, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 412
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v1, v6, :cond_2

    .line 413
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 417
    :cond_2
    return-object v3
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/dolphin/browser/gesture/i;->i:Z

    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 132
    const-string v1, "gesture_guidance_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 134
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/gesture/Gesture;)Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/gesture/Gesture;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v0

    .line 321
    :cond_1
    invoke-direct {p0, p2}, Lcom/dolphin/browser/gesture/i;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/i;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/gesture/h;->a(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v1, p2, v0}, Lcom/dolphin/browser/gesture/h;->a(Ljava/lang/String;Lcom/dolphin/browser/gesture/Gesture;)V

    .line 330
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/h;->a()Z

    move-result v0

    .line 331
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->t()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/gesture/Gesture;)Z
    .locals 1

    .prologue
    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    .line 161
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/i;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/h;->a(Ljava/lang/String;)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0, p1, p3}, Lcom/dolphin/browser/gesture/h;->a(Ljava/lang/String;Lcom/dolphin/browser/gesture/Gesture;)V

    .line 165
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/gesture/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/h;->a()Z

    move-result v0

    .line 169
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->t()V

    goto :goto_0
.end method

.method public b(Lcom/dolphin/browser/gesture/Gesture;)Ljava/lang/String;
    .locals 1

    .prologue
    const v0, 0x3f333333

    .line 520
    invoke-virtual {p0, p1, v0, v0}, Lcom/dolphin/browser/gesture/i;->a(Lcom/dolphin/browser/gesture/Gesture;FF)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/i;->i:Z

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->v()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/i;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/h;->a(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/h;->a()Z

    .line 307
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->t()V

    .line 309
    :cond_2
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/i;->f(Ljava/lang/String;)Z

    .line 310
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/i;->g:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 229
    .line 230
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/h;->c()Ljava/util/Set;

    move-result-object v1

    .line 231
    if-eqz v1, :cond_6

    .line 232
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 233
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v7, v8

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 234
    invoke-static {v6}, Lcom/dolphin/browser/gesture/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 235
    invoke-virtual {p0, v6}, Lcom/dolphin/browser/gesture/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    :cond_1
    sget v1, Lcom/dolphin/browser/gesture/a/e;->a:I

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 241
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v8

    const-string v3, "url=?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object v10, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_3

    .line 246
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 248
    iget-object v3, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v3, v6, v2}, Lcom/dolphin/browser/gesture/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 250
    or-int/lit8 v1, v7, 0x1

    move v7, v1

    .line 251
    goto :goto_0

    .line 253
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_3
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v8

    const-string v3, "url=?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object v10, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_5

    .line 261
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 262
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {v2}, Lcom/dolphin/browser/gesture/i;->j(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 264
    iget-object v3, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v3, v6, v2}, Lcom/dolphin/browser/gesture/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    or-int/lit8 v7, v7, 0x1

    .line 268
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    move v1, v7

    move v7, v1

    .line 270
    goto/16 :goto_0

    :cond_6
    move v7, v8

    .line 273
    :cond_7
    if-eqz v7, :cond_8

    .line 274
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/h;->a()Z

    .line 276
    :cond_8
    return v7
.end method

.method public d(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 525
    const-string v1, "help"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/dolphin/browser/gesture/i;->g:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 527
    add-int/lit8 v0, v0, 0x1

    .line 528
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/gesture/i;->g:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 531
    :cond_0
    return v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/h;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->b:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/h;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Lcom/dolphin/browser/gesture/Gesture;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 731
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    :goto_0
    return-object v0

    .line 734
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->u()V

    .line 735
    sget-object v1, Lcom/dolphin/browser/gesture/i;->l:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/gesture/h;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 736
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 737
    :cond_1
    const-string v1, "GestureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no gesture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 740
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/Gesture;

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/i;->e:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 360
    const-string v0, "gesture_marked"

    sget-object v1, Lcom/dolphin/browser/gesture/i;->n:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 361
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->w()Z

    .line 362
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->r()V

    .line 363
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/i;->g:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 364
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->t()V

    .line 365
    return-void
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 767
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/i;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->v()Z

    move-result v0

    .line 771
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 535
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 536
    invoke-direct {p0, v1}, Lcom/dolphin/browser/gesture/i;->a(Ljava/util/List;)V

    .line 537
    const/4 v0, 0x0

    .line 538
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 539
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 541
    :cond_0
    return-object v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()Lcom/dolphin/browser/gesture/Gesture;
    .locals 1

    .prologue
    .line 545
    const-string v0, "help"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/i;->k(Ljava/lang/String;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->q()Ljava/util/List;

    move-result-object v0

    .line 584
    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/i;->a(Ljava/util/List;)V

    .line 585
    return-object v0
.end method

.method public j()Ljava/io/File;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/dolphin/browser/gesture/i;->e:Ljava/io/File;

    return-object v0
.end method

.method public k()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/gesture/Gesture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/i;->u()V

    .line 746
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 747
    sget-object v0, Lcom/dolphin/browser/gesture/i;->l:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/h;->c()Ljava/util/Set;

    move-result-object v0

    .line 748
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 749
    sget-object v1, Lcom/dolphin/browser/gesture/i;->l:Lcom/dolphin/browser/gesture/h;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/gesture/h;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/gesture/Gesture;

    .line 750
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/i;->h(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 751
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 754
    :cond_1
    return-object v2
.end method

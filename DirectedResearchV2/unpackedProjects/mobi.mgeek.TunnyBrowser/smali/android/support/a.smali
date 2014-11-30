.class public Landroid/support/a;
.super Ljava/lang/Object;
.source "ActivityManagerCompat.java"


# direct methods
.method public static a()I
    .locals 3

    .prologue
    .line 48
    :try_start_0
    const-string v0, "dalvik.vm.heapsize"

    const-string v1, "16m"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 52
    :goto_0
    return v0

    .line 50
    :catch_0
    move-exception v0

    .line 52
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_0

    move v0, v1

    .line 83
    :goto_0
    return v0

    .line 65
    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 67
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 68
    new-instance v3, Landroid/support/g;

    invoke-direct {v3}, Landroid/support/g;-><init>()V

    .line 69
    invoke-virtual {v3}, Landroid/support/g;->a()V

    .line 70
    invoke-virtual {v3}, Landroid/support/g;->b()J

    move-result-wide v3

    const-wide/32 v5, 0x20000000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    move v0, v2

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 76
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 77
    iget v0, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v3

    .line 78
    const v3, 0x96000

    if-lt v0, v3, :cond_2

    move v0, v2

    .line 81
    goto :goto_0

    :cond_2
    move v0, v1

    .line 83
    goto :goto_0
.end method

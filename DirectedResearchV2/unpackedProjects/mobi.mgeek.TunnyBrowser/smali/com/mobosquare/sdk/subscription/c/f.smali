.class public final Lcom/mobosquare/sdk/subscription/c/f;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final a:Ljava/io/PrintStream;

.field public static final b:Ljava/io/PrintStream;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/util/regex/Pattern;

.field private static e:I

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 345
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mobosquare/sdk/subscription/c/f;->c:Ljava/lang/Object;

    .line 347
    const-string v0, "\r|\r\n|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mobosquare/sdk/subscription/c/f;->d:Ljava/util/regex/Pattern;

    .line 392
    new-instance v0, Lcom/mobosquare/sdk/subscription/c/g;

    const/4 v1, 0x6

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/mobosquare/sdk/subscription/c/g;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mobosquare/sdk/subscription/c/f;->a:Ljava/io/PrintStream;

    .line 396
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v0, Lcom/mobosquare/sdk/subscription/c/f;->b:Ljava/io/PrintStream;

    .line 401
    const/4 v0, -0x1

    sput v0, Lcom/mobosquare/sdk/subscription/c/f;->e:I

    .line 406
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v1, Lcom/mobosquare/sdk/subscription/c/f;->a:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_0

    .line 407
    sget-object v0, Lcom/mobosquare/sdk/subscription/c/f;->a:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 39
    :cond_0
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 688
    sget v1, Lcom/mobosquare/sdk/subscription/c/f;->e:I

    if-lt p0, v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v0, v2

    .line 716
    :cond_1
    return v0

    .line 691
    :cond_2
    sget-object v1, Lcom/mobosquare/sdk/subscription/c/f;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 694
    sget-object v1, Lcom/mobosquare/sdk/subscription/c/f;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/mobosquare/sdk/subscription/c/f;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move-object v1, p1

    .line 706
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 707
    array-length v3, v5

    move v0, v2

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v5, v2

    .line 708
    invoke-static {p0, v1, v4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 707
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 697
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/mobosquare/sdk/subscription/c/f;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 698
    sget-object v1, Lcom/mobosquare/sdk/subscription/c/f;->f:Ljava/lang/String;

    goto :goto_0

    .line 701
    :cond_5
    sget-object v1, Lcom/mobosquare/sdk/subscription/c/f;->f:Ljava/lang/String;

    .line 702
    const-string v0, "[%s]%s"

    goto :goto_0

    .line 711
    :cond_6
    array-length v6, v5

    move v3, v2

    move v0, v2

    :goto_2
    if-ge v3, v6, :cond_1

    aget-object v4, v5, v3

    .line 712
    const-string v7, "[%s]%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v2

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 713
    invoke-static {p0, v1, v4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v0

    .line 711
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/mobosquare/sdk/subscription/c/f;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 514
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 515
    const/4 v1, 0x3

    invoke-static {v1, p0, v0}, Lcom/mobosquare/sdk/subscription/c/f;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 735
    if-eqz p0, :cond_0

    .line 736
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 739
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 740
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 741
    const-string v2, "%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 747
    :goto_0
    return-object v0

    .line 743
    :catch_0
    move-exception v0

    .line 747
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final a(I)V
    .locals 2

    .prologue
    .line 433
    sget-object v1, Lcom/mobosquare/sdk/subscription/c/f;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_0
    sput p0, Lcom/mobosquare/sdk/subscription/c/f;->e:I

    .line 433
    monitor-exit v1

    .line 436
    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 725
    invoke-static {p0}, Lcom/mobosquare/sdk/subscription/c/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobosquare/sdk/subscription/c/f;->a(Ljava/lang/String;)V

    .line 726
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Lcom/mobosquare/sdk/subscription/c/f;->a(I)V

    .line 728
    return-void

    .line 726
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 416
    sput-object p0, Lcom/mobosquare/sdk/subscription/c/f;->f:Ljava/lang/String;

    .line 417
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/mobosquare/sdk/subscription/c/f;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 637
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 638
    const/4 v1, 0x6

    invoke-static {v1, p0, v0}, Lcom/mobosquare/sdk/subscription/c/f;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/mobosquare/sdk/subscription/c/f;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.class public Lcom/dolphin/browser/test/a;
.super Ljava/lang/Object;
.source "PopularUrlsTest.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/io/File;

.field private static g:Ljava/util/Random;

.field private static h:Lcom/dolphin/browser/test/a;


# instance fields
.field private c:Ljava/util/concurrent/CountDownLatch;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/test/a;->a:Ljava/lang/String;

    .line 54
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/test/a;->b:Ljava/io/File;

    .line 63
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/dolphin/browser/test/a;->g:Ljava/util/Random;

    return-void
.end method

.method public static a(Lcom/dolphin/browser/core/IWebView;I)V
    .locals 1

    .prologue
    .line 432
    sget-object v0, Lcom/dolphin/browser/test/a;->h:Lcom/dolphin/browser/test/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/test/a;->h:Lcom/dolphin/browser/test/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/test/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    sget-object v0, Lcom/dolphin/browser/test/a;->h:Lcom/dolphin/browser/test/a;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/test/a;->b(Lcom/dolphin/browser/core/IWebView;I)V

    .line 435
    :cond_0
    return-void
.end method

.method public static a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 438
    sget-object v0, Lcom/dolphin/browser/test/a;->h:Lcom/dolphin/browser/test/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/test/a;->h:Lcom/dolphin/browser/test/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/test/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    sget-object v0, Lcom/dolphin/browser/test/a;->h:Lcom/dolphin/browser/test/a;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/test/a;->b(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    .line 441
    :cond_0
    return-void
.end method

.method private b(Lcom/dolphin/browser/core/IWebView;I)V
    .locals 1

    .prologue
    .line 444
    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    .line 445
    iget-boolean v0, p0, Lcom/dolphin/browser/test/a;->e:Z

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/test/a;->e:Z

    .line 448
    iget-boolean v0, p0, Lcom/dolphin/browser/test/a;->d:Z

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/dolphin/browser/test/a;->a()V

    .line 454
    :cond_0
    return-void
.end method

.method private b(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/dolphin/browser/test/a;->d:Z

    if-nez v0, :cond_0

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/test/a;->d:Z

    .line 459
    iget-boolean v0, p0, Lcom/dolphin/browser/test/a;->e:Z

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/dolphin/browser/test/a;->a()V

    .line 464
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/test/a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "PopularUrlsTest"

    const-string v1, "Expecting latch to be 1, but it\'s not!"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/test/a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/dolphin/browser/test/a;->f:Z

    return v0
.end method

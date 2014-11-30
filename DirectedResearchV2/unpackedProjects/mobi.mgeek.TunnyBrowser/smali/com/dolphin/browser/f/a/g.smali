.class public Lcom/dolphin/browser/f/a/g;
.super Ljava/lang/Object;
.source "FaviconServiceClient.java"


# static fields
.field private static volatile a:Lcom/dolphin/browser/f/a/g;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static a()Lcom/dolphin/browser/f/a/g;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/dolphin/browser/f/a/g;->a:Lcom/dolphin/browser/f/a/g;

    if-nez v0, :cond_1

    .line 15
    const-class v1, Lcom/dolphin/browser/f/a/g;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/f/a/g;->a:Lcom/dolphin/browser/f/a/g;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/dolphin/browser/f/a/g;

    invoke-direct {v0}, Lcom/dolphin/browser/f/a/g;-><init>()V

    sput-object v0, Lcom/dolphin/browser/f/a/g;->a:Lcom/dolphin/browser/f/a/g;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_1
    sget-object v0, Lcom/dolphin/browser/f/a/g;->a:Lcom/dolphin/browser/f/a/g;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v4

    .line 33
    :cond_1
    invoke-static {p1}, Lcom/dolphin/browser/f/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {p1}, Lcom/dolphin/browser/f/a/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-static {v6}, Lcom/dolphin/browser/f/a/h;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 41
    const-wide v2, 0x7fffffffffffffffL

    const-string v5, "favicon"

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/Network/l;->a(Ljava/lang/String;Ljava/io/File;JZLjava/lang/String;)Z

    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    invoke-static {v6}, Lcom/dolphin/browser/f/a/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0
.end method

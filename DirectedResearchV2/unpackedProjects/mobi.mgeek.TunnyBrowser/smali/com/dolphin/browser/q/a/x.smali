.class public Lcom/dolphin/browser/q/a/x;
.super Ljava/lang/Object;
.source "UploadNotificationManager.java"


# static fields
.field private static volatile a:Lcom/dolphin/browser/q/a/x;


# instance fields
.field private b:Lcom/dolphin/browser/q/a/v;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/dolphin/browser/q/a/v;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/q/a/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/a/x;->b:Lcom/dolphin/browser/q/a/v;

    .line 24
    return-void
.end method

.method public static a()Lcom/dolphin/browser/q/a/x;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/dolphin/browser/q/a/x;->a:Lcom/dolphin/browser/q/a/x;

    if-nez v0, :cond_1

    .line 13
    const-class v1, Lcom/dolphin/browser/q/a/j;

    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/q/a/x;->a:Lcom/dolphin/browser/q/a/x;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/dolphin/browser/q/a/x;

    invoke-direct {v0}, Lcom/dolphin/browser/q/a/x;-><init>()V

    sput-object v0, Lcom/dolphin/browser/q/a/x;->a:Lcom/dolphin/browser/q/a/x;

    .line 17
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_1
    sget-object v0, Lcom/dolphin/browser/q/a/x;->a:Lcom/dolphin/browser/q/a/x;

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(ILjava/lang/String;II)V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/dolphin/browser/q/a/w;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/q/a/w;-><init>(ILjava/lang/String;II)V

    .line 30
    iget-object v1, p0, Lcom/dolphin/browser/q/a/x;->b:Lcom/dolphin/browser/q/a/v;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/q/a/v;->a(Lcom/dolphin/browser/q/a/w;)V

    .line 31
    return-void
.end method

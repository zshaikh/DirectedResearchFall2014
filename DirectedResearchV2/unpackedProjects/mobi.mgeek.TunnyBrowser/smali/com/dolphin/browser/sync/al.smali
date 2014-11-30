.class public Lcom/dolphin/browser/sync/al;
.super Ljava/lang/Object;
.source "SyncContoller.java"


# static fields
.field private static b:Lcom/dolphin/browser/sync/al;


# instance fields
.field private volatile a:Z

.field private c:Lcom/dolphin/browser/DolphinService/Account/l;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/sync/al;->b:Lcom/dolphin/browser/sync/al;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/sync/al;->a:Z

    .line 14
    new-instance v0, Lcom/dolphin/browser/sync/am;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/sync/am;-><init>(Lcom/dolphin/browser/sync/al;)V

    iput-object v0, p0, Lcom/dolphin/browser/sync/al;->c:Lcom/dolphin/browser/DolphinService/Account/l;

    .line 54
    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ai;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;

    .line 55
    return-void
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/sync/al;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/dolphin/browser/sync/al;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/sync/al;->b:Lcom/dolphin/browser/sync/al;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/dolphin/browser/sync/al;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/al;-><init>()V

    sput-object v0, Lcom/dolphin/browser/sync/al;->b:Lcom/dolphin/browser/sync/al;

    .line 62
    :cond_0
    sget-object v0, Lcom/dolphin/browser/sync/al;->b:Lcom/dolphin/browser/sync/al;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized b()V
    .locals 0

    .prologue
    .line 68
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/al;->d:Z

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/sync/al;->d:Z

    .line 87
    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ai;->d()Landroid/content/Context;

    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;

    .line 90
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/dolphin/browser/sync/al;->c:Lcom/dolphin/browser/DolphinService/Account/l;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Lcom/dolphin/browser/DolphinService/Account/l;)V

    .line 92
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ai;->f()Lcom/dolphin/browser/DolphinService/Account/l;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Lcom/dolphin/browser/DolphinService/Account/l;)V

    .line 97
    :cond_0
    return-void
.end method

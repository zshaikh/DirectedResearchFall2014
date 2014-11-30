.class public Lcom/facebook/orca/camera/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# static fields
.field private static b:Lcom/facebook/orca/camera/BitmapManager;


# instance fields
.field private final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/orca/camera/BitmapManager;->b:Lcom/facebook/orca/camera/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/camera/BitmapManager;->a:Ljava/util/WeakHashMap;

    .line 63
    return-void
.end method

.method public static declared-synchronized a()Lcom/facebook/orca/camera/BitmapManager;
    .locals 2

    .prologue
    .line 122
    const-class v0, Lcom/facebook/orca/camera/BitmapManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/orca/camera/BitmapManager;->b:Lcom/facebook/orca/camera/BitmapManager;

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Lcom/facebook/orca/camera/BitmapManager;

    invoke-direct {v1}, Lcom/facebook/orca/camera/BitmapManager;-><init>()V

    sput-object v1, Lcom/facebook/orca/camera/BitmapManager;->b:Lcom/facebook/orca/camera/BitmapManager;

    .line 125
    :cond_0
    sget-object v1, Lcom/facebook/orca/camera/BitmapManager;->b:Lcom/facebook/orca/camera/BitmapManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized a(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/camera/BitmapManager;->c(Ljava/lang/Thread;)Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;

    move-result-object v0

    iput-object p2, v0, Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;->b:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/Thread;)Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/camera/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;

    .line 70
    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;-><init>(Lcom/facebook/orca/camera/BitmapManager$1;)V

    .line 72
    iget-object v1, p0, Lcom/facebook/orca/camera/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v0, :cond_0

    move-object v0, v4

    .line 147
    :goto_0
    return-object v0

    .line 137
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 138
    invoke-virtual {p0, v0}, Lcom/facebook/orca/camera/BitmapManager;->b(Ljava/lang/Thread;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    const-string v1, "BitmapManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not allowed to decode."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 140
    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/camera/BitmapManager;->a(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V

    .line 144
    invoke-static {p1, v4, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 146
    invoke-virtual {p0, v0}, Lcom/facebook/orca/camera/BitmapManager;->a(Ljava/lang/Thread;)V

    move-object v0, v1

    .line 147
    goto :goto_0
.end method

.method declared-synchronized a(Ljava/lang/Thread;)V
    .locals 2

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/camera/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;

    .line 88
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;->b:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/Thread;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/camera/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    if-nez v0, :cond_0

    move v0, v2

    .line 103
    :goto_0
    monitor-exit p0

    return v0

    .line 102
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/facebook/orca/camera/BitmapManager$ThreadStatus;->a:Lcom/facebook/orca/camera/BitmapManager$State;

    sget-object v1, Lcom/facebook/orca/camera/BitmapManager$State;->CANCEL:Lcom/facebook/orca/camera/BitmapManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

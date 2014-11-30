.class final Lcom/vungle/sdk/VungleCache$c;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/VungleCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Lcom/vungle/sdk/o;

.field b:Lcom/vungle/sdk/o;

.field c:Lcom/vungle/sdk/o;

.field d:Lcom/vungle/sdk/VungleCache$a;

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/vungle/sdk/VungleCache;


# direct methods
.method public constructor <init>(Lcom/vungle/sdk/VungleCache;Ljava/lang/String;Lcom/vungle/sdk/VungleCache$a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 538
    iput-object p1, p0, Lcom/vungle/sdk/VungleCache$c;->f:Lcom/vungle/sdk/VungleCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object v0, p0, Lcom/vungle/sdk/VungleCache$c;->a:Lcom/vungle/sdk/o;

    iput-object v0, p0, Lcom/vungle/sdk/VungleCache$c;->b:Lcom/vungle/sdk/o;

    iput-object v0, p0, Lcom/vungle/sdk/VungleCache$c;->c:Lcom/vungle/sdk/o;

    .line 539
    iput-object p3, p0, Lcom/vungle/sdk/VungleCache$c;->d:Lcom/vungle/sdk/VungleCache$a;

    .line 540
    iput-object p2, p0, Lcom/vungle/sdk/VungleCache$c;->e:Ljava/lang/String;

    .line 541
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 654
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache$c;->e:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 655
    const-string v1, "Cache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to acquire campaign: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vungle/sdk/VungleCache$c;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vungle/sdk/VungleCache;->a(Ljava/io/File;)Z

    .line 659
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache$c;->f:Lcom/vungle/sdk/VungleCache;

    invoke-static {v0}, Lcom/vungle/sdk/VungleCache;->a(Lcom/vungle/sdk/VungleCache;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    .line 660
    :try_start_0
    iget-object v1, p0, Lcom/vungle/sdk/VungleCache$c;->f:Lcom/vungle/sdk/VungleCache;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/sdk/VungleCache;->a(Lcom/vungle/sdk/VungleCache;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 661
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache$c;->f:Lcom/vungle/sdk/VungleCache;

    invoke-static {}, Lcom/vungle/sdk/VungleCache;->e()V

    .line 663
    return-void

    .line 661
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.class final Lcom/vungle/sdk/s$a;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/sdk/s$a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vungle/sdk/s$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/sdk/s$a;->a:Z

    .line 35
    return-void
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 39
    :goto_0
    iget-boolean v0, p0, Lcom/vungle/sdk/s$a;->a:Z

    if-eqz v0, :cond_1

    .line 41
    invoke-static {}, Lcom/vungle/sdk/n;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/vungle/sdk/n;->j:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/vungle/sdk/n;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Lcom/vungle/sdk/VungleConnectionHandler;->e()V

    .line 45
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/s;->c()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

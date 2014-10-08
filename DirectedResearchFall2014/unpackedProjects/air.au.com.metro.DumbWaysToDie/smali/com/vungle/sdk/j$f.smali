.class final Lcom/vungle/sdk/j$f;
.super Ljava/util/TimerTask;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/j;


# direct methods
.method private constructor <init>(Lcom/vungle/sdk/j;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/vungle/sdk/j$f;->a:Lcom/vungle/sdk/j;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/sdk/j;B)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/vungle/sdk/j$f;-><init>(Lcom/vungle/sdk/j;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/vungle/sdk/j$f;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->w(Lcom/vungle/sdk/j;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 503
    return-void
.end method

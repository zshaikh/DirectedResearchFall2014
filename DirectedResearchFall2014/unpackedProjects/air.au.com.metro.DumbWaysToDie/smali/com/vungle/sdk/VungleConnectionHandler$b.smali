.class final Lcom/vungle/sdk/VungleConnectionHandler$b;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/VungleConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/VungleConnectionHandler$b$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vungle/sdk/VungleConnectionHandler;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/vungle/sdk/VungleConnectionHandler;I)V
    .locals 3

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler$b;->a:Ljava/lang/ref/WeakReference;

    .line 439
    iput p2, p0, Lcom/vungle/sdk/VungleConnectionHandler$b;->b:I

    .line 440
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vungle/sdk/VungleConnectionHandler$b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vungle/sdk/VungleConnectionHandler$b$a;-><init>(Lcom/vungle/sdk/VungleConnectionHandler$b;B)V

    const-string v2, "VungleNetworkTaskThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler$b;->c:Ljava/lang/Thread;

    .line 441
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler$b;->c:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 442
    return-void
.end method

.class final Lcom/vungle/sdk/ar;
.super Lcom/vungle/sdk/aq;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/sdk/aq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/ClassLoader;

.field private g:Lcom/vungle/sdk/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/sdk/aq",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/vungle/sdk/aq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 30
    iput-object p3, p0, Lcom/vungle/sdk/ar;->f:Ljava/lang/ClassLoader;

    .line 31
    iput-object p4, p0, Lcom/vungle/sdk/ar;->e:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/sdk/av;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/sdk/ar;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/sdk/ar;->d:Ljava/lang/Object;

    iget-object v2, p0, Lcom/vungle/sdk/ar;->f:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/ar;->g:Lcom/vungle/sdk/aq;

    .line 36
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vungle/sdk/ar;->g:Lcom/vungle/sdk/aq;

    return-object v0
.end method

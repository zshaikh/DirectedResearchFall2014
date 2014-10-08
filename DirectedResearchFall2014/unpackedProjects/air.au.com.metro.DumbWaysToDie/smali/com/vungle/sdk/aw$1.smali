.class final Lcom/vungle/sdk/aw$1;
.super Lcom/vungle/sdk/ax;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/sdk/ax",
        "<",
        "Ljava/lang/ClassLoader;",
        "Lcom/vungle/sdk/ax",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Class",
        "<*>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/aw;


# direct methods
.method constructor <init>(Lcom/vungle/sdk/aw;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vungle/sdk/aw$1;->a:Lcom/vungle/sdk/aw;

    invoke-direct {p0}, Lcom/vungle/sdk/ax;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    check-cast p1, Ljava/lang/ClassLoader;

    new-instance v0, Lcom/vungle/sdk/aw$1$1;

    invoke-direct {v0, p0, p1}, Lcom/vungle/sdk/aw$1$1;-><init>(Lcom/vungle/sdk/aw$1;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

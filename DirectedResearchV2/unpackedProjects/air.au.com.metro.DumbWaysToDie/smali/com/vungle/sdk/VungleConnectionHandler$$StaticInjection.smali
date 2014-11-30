.class public final Lcom/vungle/sdk/VungleConnectionHandler$$StaticInjection;
.super Lcom/vungle/sdk/bb;
.source "vungle"


# instance fields
.field private a:Lcom/vungle/sdk/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/sdk/aq",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/sdk/VungleConnectionHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vungle/sdk/bb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler$$StaticInjection;->a:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/inject/Provider;

    sput-object p0, Lcom/vungle/sdk/VungleConnectionHandler;->a:Ljavax/inject/Provider;

    .line 31
    return-void
.end method

.method public final a(Lcom/vungle/sdk/av;)V
    .locals 3

    .prologue
    .line 21
    const-string v0, "javax.inject.Provider<com.vungle.sdk.VungleConnectionHandler>"

    const-class v1, Lcom/vungle/sdk/VungleConnectionHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler$$StaticInjection;->a:Lcom/vungle/sdk/aq;

    .line 22
    return-void
.end method

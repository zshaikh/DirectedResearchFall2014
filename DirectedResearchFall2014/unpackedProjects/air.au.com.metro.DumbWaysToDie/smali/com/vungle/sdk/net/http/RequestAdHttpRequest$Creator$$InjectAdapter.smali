.class public final Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator$$InjectAdapter;
.super Lcom/vungle/sdk/aq;
.source "vungle"

# interfaces
.implements Lcom/vungle/sdk/ao;
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/sdk/aq",
        "<",
        "Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;",
        ">;",
        "Lcom/vungle/sdk/ao",
        "<",
        "Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/vungle/sdk/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/sdk/aq",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/sdk/net/http/RequestAdHttpRequest;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    const-string v0, "com.vungle.sdk.net.http.RequestAdHttpRequest$Creator"

    const-string v1, "members/com.vungle.sdk.net.http.RequestAdHttpRequest$Creator"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/vungle/sdk/aq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 30
    return-void
.end method

.method private a(Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator$$InjectAdapter;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/inject/Provider;

    iput-object p0, p1, Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;->a:Ljavax/inject/Provider;

    .line 69
    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/sdk/av;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    const-string v0, "javax.inject.Provider<com.vungle.sdk.net.http.RequestAdHttpRequest>"

    const-class v1, Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator$$InjectAdapter;->e:Lcom/vungle/sdk/aq;

    .line 40
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    check-cast p1, Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;

    invoke-direct {p0, p1}, Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator$$InjectAdapter;->a(Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;)V

    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/vungle/sdk/aq",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/vungle/sdk/aq",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator$$InjectAdapter;->e:Lcom/vungle/sdk/aq;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;

    invoke-direct {v0}, Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;-><init>()V

    invoke-direct {p0, v0}, Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator$$InjectAdapter;->a(Lcom/vungle/sdk/net/http/RequestAdHttpRequest$Creator;)V

    return-object v0
.end method

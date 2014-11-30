.class public final Lcom/vungle/sdk/VunglePub$$InjectAdapter;
.super Lcom/vungle/sdk/aq;
.source "vungle"

# interfaces
.implements Lcom/vungle/sdk/ao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/sdk/aq",
        "<",
        "Lcom/vungle/sdk/VunglePub;",
        ">;",
        "Lcom/vungle/sdk/ao",
        "<",
        "Lcom/vungle/sdk/VunglePub;",
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
            "Lcom/vungle/sdk/model/RequestAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lcom/vungle/sdk/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/sdk/aq",
            "<",
            "Lcom/vungle/sdk/IVungleConstants;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/vungle/sdk/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/sdk/aq",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/sdk/VungleCache;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Lcom/vungle/sdk/aq;
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

.field private i:Lcom/vungle/sdk/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/sdk/aq",
            "<",
            "Lcom/vungle/sdk/model/VungleParser;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/vungle/sdk/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/sdk/aq",
            "<",
            "Lcom/vungle/sdk/VungleUtil;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 33
    const/4 v0, 0x0

    const-string v1, "members/com.vungle.sdk.VunglePub"

    const/4 v2, 0x0

    const-class v3, Lcom/vungle/sdk/VunglePub;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/vungle/sdk/aq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/sdk/av;)V
    .locals 3

    .prologue
    const-class v2, Lcom/vungle/sdk/VunglePub;

    .line 43
    const-string v0, "javax.inject.Provider<com.vungle.sdk.model.RequestAd>"

    const-class v1, Lcom/vungle/sdk/VunglePub;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->e:Lcom/vungle/sdk/aq;

    .line 44
    const-string v0, "com.vungle.sdk.IVungleConstants"

    const-class v1, Lcom/vungle/sdk/VunglePub;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->f:Lcom/vungle/sdk/aq;

    .line 45
    const-string v0, "javax.inject.Provider<com.vungle.sdk.VungleCache>"

    const-class v1, Lcom/vungle/sdk/VunglePub;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->g:Lcom/vungle/sdk/aq;

    .line 46
    const-string v0, "javax.inject.Provider<com.vungle.sdk.VungleConnectionHandler>"

    const-class v1, Lcom/vungle/sdk/VunglePub;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->h:Lcom/vungle/sdk/aq;

    .line 47
    const-string v0, "com.vungle.sdk.model.VungleParser"

    const-class v1, Lcom/vungle/sdk/VunglePub;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->i:Lcom/vungle/sdk/aq;

    .line 48
    const-string v0, "com.vungle.sdk.VungleUtil"

    const-class v1, Lcom/vungle/sdk/VunglePub;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->j:Lcom/vungle/sdk/aq;

    .line 49
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/sdk/VunglePub;

    iget-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/vungle/sdk/VunglePub;->a:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->f:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/IVungleConstants;

    iput-object v0, p1, Lcom/vungle/sdk/VunglePub;->b:Lcom/vungle/sdk/IVungleConstants;

    iget-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->g:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/vungle/sdk/VunglePub;->c:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->h:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/vungle/sdk/VunglePub;->d:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->i:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/model/VungleParser;

    iput-object v0, p1, Lcom/vungle/sdk/VunglePub;->e:Lcom/vungle/sdk/model/VungleParser;

    iget-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->j:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/sdk/VungleUtil;

    iput-object p0, p1, Lcom/vungle/sdk/VunglePub;->f:Lcom/vungle/sdk/VungleUtil;

    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
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
    .line 57
    iget-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->e:Lcom/vungle/sdk/aq;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->f:Lcom/vungle/sdk/aq;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->g:Lcom/vungle/sdk/aq;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->h:Lcom/vungle/sdk/aq;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->i:Lcom/vungle/sdk/aq;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/vungle/sdk/VunglePub$$InjectAdapter;->j:Lcom/vungle/sdk/aq;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

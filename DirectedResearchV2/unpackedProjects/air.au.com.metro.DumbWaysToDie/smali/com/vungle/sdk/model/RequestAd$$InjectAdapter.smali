.class public final Lcom/vungle/sdk/model/RequestAd$$InjectAdapter;
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
        "Lcom/vungle/sdk/model/RequestAd;",
        ">;",
        "Lcom/vungle/sdk/ao",
        "<",
        "Lcom/vungle/sdk/model/RequestAd;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/sdk/model/RequestAd;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/vungle/sdk/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/sdk/aq",
            "<",
            "Lcom/vungle/sdk/VungleUtil;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/vungle/sdk/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/sdk/aq",
            "<",
            "Landroid/media/AudioManager;",
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
            "Lcom/vungle/sdk/VungleUtil;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 32
    const-string v0, "com.vungle.sdk.model.RequestAd"

    const-string v1, "members/com.vungle.sdk.model.RequestAd"

    const/4 v2, 0x0

    const-class v3, Lcom/vungle/sdk/model/RequestAd;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/vungle/sdk/aq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 33
    return-void
.end method

.method private a(Lcom/vungle/sdk/model/RequestAd;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vungle/sdk/model/RequestAd$$InjectAdapter;->f:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p1, Lcom/vungle/sdk/model/RequestAd;->a:Landroid/media/AudioManager;

    .line 78
    iget-object v0, p0, Lcom/vungle/sdk/model/RequestAd$$InjectAdapter;->g:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/vungle/sdk/model/RequestAd;->b:Ljavax/inject/Provider;

    .line 79
    iget-object v0, p0, Lcom/vungle/sdk/model/RequestAd$$InjectAdapter;->h:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/sdk/VungleUtil;

    iput-object p0, p1, Lcom/vungle/sdk/model/RequestAd;->c:Lcom/vungle/sdk/VungleUtil;

    .line 80
    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/sdk/av;)V
    .locals 4

    .prologue
    const-string v3, "com.vungle.sdk.VungleUtil"

    const-class v2, Lcom/vungle/sdk/model/RequestAd;

    .line 42
    const-string v0, "com.vungle.sdk.VungleUtil"

    const-class v0, Lcom/vungle/sdk/model/RequestAd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v3, v2, v0}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/model/RequestAd$$InjectAdapter;->e:Lcom/vungle/sdk/aq;

    .line 43
    const-string v0, "android.media.AudioManager"

    const-class v1, Lcom/vungle/sdk/model/RequestAd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/model/RequestAd$$InjectAdapter;->f:Lcom/vungle/sdk/aq;

    .line 44
    const-string v0, "javax.inject.Provider<com.vungle.sdk.VungleCache>"

    const-class v1, Lcom/vungle/sdk/model/RequestAd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/model/RequestAd$$InjectAdapter;->g:Lcom/vungle/sdk/aq;

    .line 45
    const-string v0, "com.vungle.sdk.VungleUtil"

    const-class v0, Lcom/vungle/sdk/model/RequestAd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v3, v2, v0}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/model/RequestAd$$InjectAdapter;->h:Lcom/vungle/sdk/aq;

    .line 46
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/vungle/sdk/model/RequestAd;

    invoke-direct {p0, p1}, Lcom/vungle/sdk/model/RequestAd$$InjectAdapter;->a(Lcom/vungle/sdk/model/RequestAd;)V

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
    .line 54
    iget-object v0, p0, Lcom/vungle/sdk/model/RequestAd$$InjectAdapter;->e:Lcom/vungle/sdk/aq;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/vungle/sdk/model/RequestAd$$InjectAdapter;->f:Lcom/vungle/sdk/aq;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/vungle/sdk/model/RequestAd$$InjectAdapter;->g:Lcom/vungle/sdk/aq;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/vungle/sdk/model/RequestAd$$InjectAdapter;->h:Lcom/vungle/sdk/aq;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/vungle/sdk/model/RequestAd;

    iget-object v1, p0, Lcom/vungle/sdk/model/RequestAd$$InjectAdapter;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v1}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    invoke-direct {v0}, Lcom/vungle/sdk/model/RequestAd;-><init>()V

    invoke-direct {p0, v0}, Lcom/vungle/sdk/model/RequestAd$$InjectAdapter;->a(Lcom/vungle/sdk/model/RequestAd;)V

    return-object v0
.end method
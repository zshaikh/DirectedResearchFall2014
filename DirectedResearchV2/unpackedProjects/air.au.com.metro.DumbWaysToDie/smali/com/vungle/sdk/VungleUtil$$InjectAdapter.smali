.class public final Lcom/vungle/sdk/VungleUtil$$InjectAdapter;
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
        "Lcom/vungle/sdk/VungleUtil;",
        ">;",
        "Lcom/vungle/sdk/ao",
        "<",
        "Lcom/vungle/sdk/VungleUtil;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/sdk/VungleUtil;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/vungle/sdk/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/sdk/aq",
            "<",
            "Landroid/telephony/TelephonyManager;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/vungle/sdk/aq;
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

.field private g:Lcom/vungle/sdk/aq;
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
    .locals 4

    .prologue
    .line 31
    const-string v0, "com.vungle.sdk.VungleUtil"

    const-string v1, "members/com.vungle.sdk.VungleUtil"

    const/4 v2, 0x1

    const-class v3, Lcom/vungle/sdk/VungleUtil;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/vungle/sdk/aq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 32
    return-void
.end method

.method private a(Lcom/vungle/sdk/VungleUtil;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vungle/sdk/VungleUtil$$InjectAdapter;->e:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p1, Lcom/vungle/sdk/VungleUtil;->a:Landroid/telephony/TelephonyManager;

    .line 75
    iget-object v0, p0, Lcom/vungle/sdk/VungleUtil$$InjectAdapter;->f:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/vungle/sdk/VungleUtil;->b:Ljavax/inject/Provider;

    .line 76
    iget-object v0, p0, Lcom/vungle/sdk/VungleUtil$$InjectAdapter;->g:Lcom/vungle/sdk/aq;

    invoke-virtual {v0}, Lcom/vungle/sdk/aq;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/inject/Provider;

    iput-object p0, p1, Lcom/vungle/sdk/VungleUtil;->c:Ljavax/inject/Provider;

    .line 77
    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/sdk/av;)V
    .locals 3

    .prologue
    const-class v2, Lcom/vungle/sdk/VungleUtil;

    .line 41
    const-string v0, "android.telephony.TelephonyManager"

    const-class v1, Lcom/vungle/sdk/VungleUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/VungleUtil$$InjectAdapter;->e:Lcom/vungle/sdk/aq;

    .line 42
    const-string v0, "javax.inject.Provider<com.vungle.sdk.VungleCache>"

    const-class v1, Lcom/vungle/sdk/VungleUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/VungleUtil$$InjectAdapter;->f:Lcom/vungle/sdk/aq;

    .line 43
    const-string v0, "javax.inject.Provider<com.vungle.sdk.VungleConnectionHandler>"

    const-class v1, Lcom/vungle/sdk/VungleUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/vungle/sdk/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Lcom/vungle/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/VungleUtil$$InjectAdapter;->g:Lcom/vungle/sdk/aq;

    .line 44
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/vungle/sdk/VungleUtil;

    invoke-direct {p0, p1}, Lcom/vungle/sdk/VungleUtil$$InjectAdapter;->a(Lcom/vungle/sdk/VungleUtil;)V

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
    .line 52
    iget-object v0, p0, Lcom/vungle/sdk/VungleUtil$$InjectAdapter;->e:Lcom/vungle/sdk/aq;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/vungle/sdk/VungleUtil$$InjectAdapter;->f:Lcom/vungle/sdk/aq;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/vungle/sdk/VungleUtil$$InjectAdapter;->g:Lcom/vungle/sdk/aq;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/vungle/sdk/VungleUtil;

    invoke-direct {v0}, Lcom/vungle/sdk/VungleUtil;-><init>()V

    invoke-direct {p0, v0}, Lcom/vungle/sdk/VungleUtil$$InjectAdapter;->a(Lcom/vungle/sdk/VungleUtil;)V

    return-object v0
.end method
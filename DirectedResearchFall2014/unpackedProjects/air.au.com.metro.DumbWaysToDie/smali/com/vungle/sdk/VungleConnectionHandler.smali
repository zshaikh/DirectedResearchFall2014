.class public Lcom/vungle/sdk/VungleConnectionHandler;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/VungleConnectionHandler$b;,
        Lcom/vungle/sdk/VungleConnectionHandler$a;
    }
.end annotation


# static fields
.field static a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/sdk/VungleConnectionHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# instance fields
.field b:Lcom/vungle/sdk/net/http/HttpGateway;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/sdk/VungleCache;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/sdk/model/VungleParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/sdk/VungleUtil;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/util/TimerTask;

.field private final h:Landroid/content/Context;

.field private i:I

.field private j:I

.field private k:I

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Lcom/vungle/sdk/VungleConnectionHandler$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v1, p0, Lcom/vungle/sdk/VungleConnectionHandler;->f:Z

    .line 53
    iput-object v2, p0, Lcom/vungle/sdk/VungleConnectionHandler;->g:Ljava/util/TimerTask;

    .line 56
    iput v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->i:I

    .line 57
    iput v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->j:I

    .line 58
    iput v1, p0, Lcom/vungle/sdk/VungleConnectionHandler;->k:I

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->l:J

    .line 61
    iput-object v2, p0, Lcom/vungle/sdk/VungleConnectionHandler;->m:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/vungle/sdk/VungleConnectionHandler;->n:Lcom/vungle/sdk/VungleConnectionHandler$b;

    .line 66
    iput-object p1, p0, Lcom/vungle/sdk/VungleConnectionHandler;->h:Landroid/content/Context;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/vungle/sdk/VungleConnectionHandler;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/vungle/sdk/VungleConnectionHandler;->j:I

    return p1
.end method

.method static synthetic a(Lcom/vungle/sdk/VungleConnectionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vungle/sdk/VungleConnectionHandler;->f()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/sdk/VungleConnectionHandler;Lcom/vungle/sdk/VungleConnectionHandler$a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 27
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->e:Lcom/vungle/sdk/VungleUtil;

    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/sdk/VungleUtil;->h(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vungle/sdk/VungleConnectionHandler;->m:Ljava/lang/String;

    sget-boolean v0, Lcom/vungle/sdk/n;->q:Z

    if-eqz v0, :cond_0

    sput-boolean v2, Lcom/vungle/sdk/n;->q:Z

    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/VungleCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/sdk/VungleCache;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->m:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->m:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/vungle/sdk/ab;->a()Lcom/vungle/sdk/model/RequestAd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/model/RequestAd;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/sdk/VungleConnectionHandler;->b:Lcom/vungle/sdk/net/http/HttpGateway;

    invoke-virtual {v1, v0}, Lcom/vungle/sdk/net/http/HttpGateway;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/sdk/VungleConnectionHandler;->d:Lcom/vungle/sdk/model/VungleParser;

    invoke-virtual {v1, v0}, Lcom/vungle/sdk/model/VungleParser;->a(Ljava/lang/String;)Lcom/vungle/sdk/z;

    move-result-object v0

    invoke-static {}, Lcom/vungle/sdk/ab;->a()Lcom/vungle/sdk/model/RequestAd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vungle/sdk/model/RequestAd;->a(Lcom/vungle/sdk/z;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/vungle/sdk/z;->a()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-interface {p1}, Lcom/vungle/sdk/VungleConnectionHandler$a;->a()V

    goto :goto_0

    :cond_4
    sput-boolean v2, Lcom/vungle/sdk/n;->j:Z

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/vungle/sdk/n;->k:Ljava/lang/Boolean;

    new-instance v1, Lcom/vungle/sdk/VungleConnectionHandler$1;

    invoke-direct {v1, p0}, Lcom/vungle/sdk/VungleConnectionHandler$1;-><init>(Lcom/vungle/sdk/VungleConnectionHandler;)V

    iput-object p1, v1, Lcom/vungle/sdk/VungleConnectionHandler$1;->a:Lcom/vungle/sdk/VungleConnectionHandler$a;

    iget-object v1, p0, Lcom/vungle/sdk/VungleConnectionHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/sdk/VungleCache;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/vungle/sdk/VungleCache;->a(Lcom/vungle/sdk/z;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/vungle/sdk/VungleConnectionHandler;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/vungle/sdk/VungleConnectionHandler;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/vungle/sdk/VungleConnectionHandler;)V
    .locals 4
    .parameter

    .prologue
    .line 27
    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/ab;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/sdk/VungleUtil;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/vungle/sdk/IVungleConstants;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/vungle/sdk/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/vungle/sdk/IVungleConstants;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/vungle/sdk/ab;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v1}, Lcom/vungle/sdk/ab;->a(Ljava/util/ArrayList;)V

    :cond_4
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->j:I

    invoke-direct {p0}, Lcom/vungle/sdk/VungleConnectionHandler;->f()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic c(Lcom/vungle/sdk/VungleConnectionHandler;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 27
    invoke-static {}, Lcom/vungle/sdk/IVungleConstants;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "isu"

    iget-object v2, p0, Lcom/vungle/sdk/VungleConnectionHandler;->e:Lcom/vungle/sdk/VungleUtil;

    iget-object v2, p0, Lcom/vungle/sdk/VungleConnectionHandler;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/vungle/sdk/VungleUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "app_id"

    invoke-static {}, Lcom/vungle/sdk/ab;->a()Lcom/vungle/sdk/model/RequestAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/sdk/model/RequestAd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/vungle/sdk/VungleConnectionHandler;->e:Lcom/vungle/sdk/VungleUtil;

    iget-object v1, p0, Lcom/vungle/sdk/VungleConnectionHandler;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/vungle/sdk/VungleUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ma"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    iget-object v1, p0, Lcom/vungle/sdk/VungleConnectionHandler;->e:Lcom/vungle/sdk/VungleUtil;

    invoke-static {}, Lcom/vungle/sdk/VungleUtil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/sdk/VungleUtil;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "serial"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/sdk/VungleUtil;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/vungle/sdk/q;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->j:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/vungle/sdk/VungleConnectionHandler;->h:Landroid/content/Context;

    sget-object v3, Lcom/vungle/sdk/IVungleConstants;->E:Ljava/lang/String;

    sget-object v4, Lcom/vungle/sdk/IVungleConstants;->F:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/vungle/sdk/VungleUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Install report response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    sget-object v0, Lcom/vungle/sdk/n;->l:Ljava/lang/Boolean;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/vungle/sdk/n;->l:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_3
    move v1, v5

    goto :goto_0
.end method

.method static synthetic d(Lcom/vungle/sdk/VungleConnectionHandler;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->j:I

    return v0
.end method

.method static e()V
    .locals 2

    .prologue
    .line 619
    sget-object v0, Lcom/vungle/sdk/n;->k:Ljava/lang/Boolean;

    monitor-enter v0

    .line 620
    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/n;->d()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/vungle/sdk/n;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    :goto_0
    return-void

    .line 621
    :cond_0
    monitor-exit v0

    .line 622
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vungle/sdk/n;->k:Ljava/lang/Boolean;

    .line 623
    sget-object v0, Lcom/vungle/sdk/VungleConnectionHandler;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/VungleConnectionHandler;

    invoke-virtual {v0}, Lcom/vungle/sdk/VungleConnectionHandler;->c()V

    goto :goto_0

    .line 621
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 540
    new-instance v0, Lcom/vungle/sdk/VungleConnectionHandler$2;

    invoke-direct {v0, p0}, Lcom/vungle/sdk/VungleConnectionHandler$2;-><init>(Lcom/vungle/sdk/VungleConnectionHandler;)V

    iput-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->g:Ljava/util/TimerTask;

    .line 565
    iget v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->k:I

    iget v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->k:I

    invoke-static {}, Lcom/vungle/sdk/n;->c()I

    move-result v1

    if-le v0, v1, :cond_1

    iput-boolean v2, p0, Lcom/vungle/sdk/VungleConnectionHandler;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vungle/sdk/n;->k:Ljava/lang/Boolean;

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-boolean v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->f:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/vungle/sdk/VungleConnectionHandler;->f:Z

    invoke-static {}, Lcom/vungle/sdk/n;->a()J

    move-result-wide v0

    :goto_1
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iget-object v3, p0, Lcom/vungle/sdk/VungleConnectionHandler;->g:Ljava/util/TimerTask;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sleep Timer Starts for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timer Type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vungle/sdk/VungleConnectionHandler;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    invoke-static {}, Lcom/vungle/sdk/n;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->l:J

    :goto_2
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Retry Count : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vungle/sdk/VungleConnectionHandler;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current Sleep Time : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/vungle/sdk/VungleConnectionHandler;->l:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->l:J

    goto :goto_1

    :cond_3
    iget-wide v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->l:J

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->l:J

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/vungle/sdk/ab;->e()Lccom/vungle/sdk/model/DownloadStats;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vungle/sdk/ab;->f()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 11

    .prologue
    const-wide v9, 0x408f400000000000L

    const-wide/16 v3, 0x0

    .line 95
    sget-boolean v0, Lcom/vungle/sdk/n;->i:Z

    if-eqz v0, :cond_3

    .line 96
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/sdk/x;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/sdk/ab;->a(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v0

    iget-object v1, v0, Lcom/vungle/sdk/x;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide v5, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/y;

    iget-wide v5, v0, Lcom/vungle/sdk/y;->b:J

    long-to-double v5, v5

    iget-wide v7, v0, Lcom/vungle/sdk/y;->c:J

    long-to-double v7, v7

    cmpl-double v7, v7, v3

    if-lez v7, :cond_0

    iget-wide v3, v0, Lcom/vungle/sdk/y;->c:J

    long-to-double v3, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    div-double v0, v3, v9

    div-double v2, v5, v9

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/sdk/IVungleConstants;->a(DD)V

    .line 104
    :cond_2
    new-instance v0, Lcom/vungle/sdk/x;

    invoke-direct {v0}, Lcom/vungle/sdk/x;-><init>()V

    invoke-static {v0}, Lcom/vungle/sdk/ab;->a(Lcom/vungle/sdk/x;)V

    .line 106
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/sdk/VungleUtil;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    invoke-virtual {p0}, Lcom/vungle/sdk/VungleConnectionHandler;->b()V

    .line 113
    :cond_3
    :goto_1
    return-void

    .line 109
    :cond_4
    const/4 v0, 0x5

    iput v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->j:I

    .line 110
    invoke-direct {p0}, Lcom/vungle/sdk/VungleConnectionHandler;->f()V

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->g:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->g:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 123
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->g:Ljava/util/TimerTask;

    .line 124
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/sdk/VungleUtil;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    .line 126
    sget-boolean v0, Lcom/vungle/sdk/n;->i:Z

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Lcom/vungle/sdk/VungleConnectionHandler$b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/vungle/sdk/VungleConnectionHandler$b;-><init>(Lcom/vungle/sdk/VungleConnectionHandler;I)V

    iput-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->n:Lcom/vungle/sdk/VungleConnectionHandler$b;

    .line 128
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->n:Lcom/vungle/sdk/VungleConnectionHandler$b;

    iget-object v0, v0, Lcom/vungle/sdk/VungleConnectionHandler$b;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    const/4 v0, 0x5

    iput v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->j:I

    .line 134
    invoke-direct {p0}, Lcom/vungle/sdk/VungleConnectionHandler;->f()V

    goto :goto_0
.end method

.method final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    sget-boolean v0, Lcom/vungle/sdk/n;->m:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/vungle/sdk/n;->i:Z

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    sput-boolean v2, Lcom/vungle/sdk/n;->j:Z

    .line 194
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->g:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->g:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 197
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->g:Ljava/util/TimerTask;

    .line 198
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->e:Lcom/vungle/sdk/VungleUtil;

    iget-object v1, p0, Lcom/vungle/sdk/VungleConnectionHandler;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/VungleUtil;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 199
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    .line 200
    sget-boolean v0, Lcom/vungle/sdk/n;->i:Z

    if-eqz v0, :cond_0

    .line 201
    iput v2, p0, Lcom/vungle/sdk/VungleConnectionHandler;->i:I

    .line 202
    new-instance v0, Lcom/vungle/sdk/VungleConnectionHandler$b;

    invoke-direct {v0, p0, v2}, Lcom/vungle/sdk/VungleConnectionHandler$b;-><init>(Lcom/vungle/sdk/VungleConnectionHandler;I)V

    iput-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->n:Lcom/vungle/sdk/VungleConnectionHandler$b;

    .line 203
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->n:Lcom/vungle/sdk/VungleConnectionHandler$b;

    iget-object v0, v0, Lcom/vungle/sdk/VungleConnectionHandler$b;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 206
    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->j:I

    .line 207
    invoke-direct {p0}, Lcom/vungle/sdk/VungleConnectionHandler;->f()V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 421
    sget-object v0, Lcom/vungle/sdk/n;->l:Ljava/lang/Boolean;

    monitor-enter v0

    .line 422
    :try_start_0
    sget-object v1, Lcom/vungle/sdk/n;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    .line 428
    :goto_0
    return-void

    .line 423
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/vungle/sdk/n;->l:Ljava/lang/Boolean;

    .line 424
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    new-instance v0, Lcom/vungle/sdk/VungleConnectionHandler$b;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/vungle/sdk/VungleConnectionHandler$b;-><init>(Lcom/vungle/sdk/VungleConnectionHandler;I)V

    iput-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->n:Lcom/vungle/sdk/VungleConnectionHandler$b;

    .line 427
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler;->n:Lcom/vungle/sdk/VungleConnectionHandler$b;

    iget-object v0, v0, Lcom/vungle/sdk/VungleConnectionHandler$b;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

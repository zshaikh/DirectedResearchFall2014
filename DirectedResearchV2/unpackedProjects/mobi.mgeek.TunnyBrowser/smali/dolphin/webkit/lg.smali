.class Ldolphin/webkit/lg;
.super Ljava/lang/Object;
.source "ZoomControlExternal.java"

# interfaces
.implements Ldolphin/webkit/lc;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:J


# instance fields
.field private b:Ldolphin/webkit/lk;

.field private c:Ljava/lang/Runnable;

.field private final d:Landroid/os/Handler;

.field private final e:Ldolphin/webkit/WebViewClassic;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    sput-wide v0, Ldolphin/webkit/lg;->a:J

    return-void
.end method

.method public constructor <init>(Ldolphin/webkit/WebViewClassic;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/lg;->d:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Ldolphin/webkit/lg;->e:Ldolphin/webkit/WebViewClassic;

    .line 42
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/lg;)Ldolphin/webkit/lk;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ldolphin/webkit/lg;->b:Ldolphin/webkit/lk;

    return-object v0
.end method

.method static synthetic b(Ldolphin/webkit/lg;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ldolphin/webkit/lg;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Ldolphin/webkit/lg;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ldolphin/webkit/lg;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Ldolphin/webkit/lg;)Ldolphin/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ldolphin/webkit/lg;->e:Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic f()J
    .locals 2

    .prologue
    .line 28
    sget-wide v0, Ldolphin/webkit/lg;->a:J

    return-wide v0
.end method

.method private g()Ldolphin/webkit/lk;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ldolphin/webkit/lk;

    iget-object v1, p0, Ldolphin/webkit/lg;->e:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ldolphin/webkit/lk;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v1, Ldolphin/webkit/li;

    invoke-direct {v1, p0}, Ldolphin/webkit/li;-><init>(Ldolphin/webkit/lg;)V

    invoke-virtual {v0, v1}, Ldolphin/webkit/lk;->a(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v1, Ldolphin/webkit/lj;

    invoke-direct {v1, p0}, Ldolphin/webkit/lj;-><init>(Ldolphin/webkit/lg;)V

    invoke-virtual {v0, v1}, Ldolphin/webkit/lk;->b(Landroid/view/View$OnClickListener;)V

    .line 113
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Ldolphin/webkit/lg;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Ldolphin/webkit/lg;->d:Landroid/os/Handler;

    iget-object v1, p0, Ldolphin/webkit/lg;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Ldolphin/webkit/lg;->e()Ldolphin/webkit/lk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldolphin/webkit/lk;->a(Z)V

    .line 49
    iget-object v0, p0, Ldolphin/webkit/lg;->d:Landroid/os/Handler;

    iget-object v1, p0, Ldolphin/webkit/lg;->c:Ljava/lang/Runnable;

    sget-wide v2, Ldolphin/webkit/lg;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Ldolphin/webkit/lg;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Ldolphin/webkit/lg;->d:Landroid/os/Handler;

    iget-object v1, p0, Ldolphin/webkit/lg;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/lg;->b:Ldolphin/webkit/lk;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Ldolphin/webkit/lg;->b:Ldolphin/webkit/lk;

    invoke-virtual {v0}, Ldolphin/webkit/lk;->a()V

    .line 59
    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ldolphin/webkit/lg;->b:Ldolphin/webkit/lk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/lg;->b:Ldolphin/webkit/lk;

    invoke-virtual {v0}, Ldolphin/webkit/lk;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ldolphin/webkit/lk;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Ldolphin/webkit/lg;->b:Ldolphin/webkit/lk;

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0}, Ldolphin/webkit/lg;->g()Ldolphin/webkit/lk;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/lg;->b:Ldolphin/webkit/lk;

    .line 76
    iget-object v0, p0, Ldolphin/webkit/lg;->b:Ldolphin/webkit/lk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldolphin/webkit/lk;->setVisibility(I)V

    .line 77
    new-instance v0, Ldolphin/webkit/lh;

    invoke-direct {v0, p0}, Ldolphin/webkit/lh;-><init>(Ldolphin/webkit/lg;)V

    iput-object v0, p0, Ldolphin/webkit/lg;->c:Ljava/lang/Runnable;

    .line 92
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/lg;->b:Ldolphin/webkit/lk;

    return-object v0
.end method

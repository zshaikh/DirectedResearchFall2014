.class abstract Lmobi/mgeek/TunnyBrowser/fd;
.super Ljava/lang/Object;
.source "FirstLauncherActivity.java"


# instance fields
.field protected a:Lmobi/mgeek/TunnyBrowser/fd;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/mgeek/TunnyBrowser/fb;)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/fd;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Landroid/view/View;
.end method

.method public a()Lmobi/mgeek/TunnyBrowser/fd;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fd;->a:Lmobi/mgeek/TunnyBrowser/fd;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fd;->a:Lmobi/mgeek/TunnyBrowser/fd;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

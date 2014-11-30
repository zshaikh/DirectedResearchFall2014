.class public Lmobi/mgeek/TunnyBrowser/hf;
.super Ljava/lang/Object;
.source "SplashController.java"


# static fields
.field private static b:Lmobi/mgeek/TunnyBrowser/hf;


# instance fields
.field a:Lcom/dolphin/browser/util/cw;

.field private c:Lmobi/mgeek/TunnyBrowser/hj;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lmobi/mgeek/TunnyBrowser/hf;

    invoke-direct {v0}, Lmobi/mgeek/TunnyBrowser/hf;-><init>()V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/hf;->b:Lmobi/mgeek/TunnyBrowser/hf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/hf;->d:I

    .line 69
    return-void
.end method

.method public static a()Lmobi/mgeek/TunnyBrowser/hf;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lmobi/mgeek/TunnyBrowser/hf;->b:Lmobi/mgeek/TunnyBrowser/hf;

    return-object v0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/hf;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hf;->e()V

    return-void
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/hf;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hf;->d()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hf;->c:Lmobi/mgeek/TunnyBrowser/hj;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hf;->c:Lmobi/mgeek/TunnyBrowser/hj;

    invoke-interface {v0}, Lmobi/mgeek/TunnyBrowser/hj;->a()V

    .line 32
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hf;->a:Lcom/dolphin/browser/util/cw;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hf;->a:Lcom/dolphin/browser/util/cw;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/hf;->a:Lcom/dolphin/browser/util/cw;

    .line 37
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/hf;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/hf;->d:I

    if-nez v0, :cond_0

    .line 42
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hf;->c()V

    .line 44
    :cond_0
    monitor-exit p0

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/hf;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/hf;->d:I

    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hf;->c:Lmobi/mgeek/TunnyBrowser/hj;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hf;->c:Lmobi/mgeek/TunnyBrowser/hj;

    invoke-interface {v0, p1}, Lmobi/mgeek/TunnyBrowser/hj;->a(Landroid/view/View;)V

    .line 25
    const-string v0, "Show splash view"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/hf;->a:Lcom/dolphin/browser/util/cw;

    .line 27
    :cond_0
    return-void
.end method

.method public a(Lmobi/mgeek/TunnyBrowser/hj;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/hf;->c:Lmobi/mgeek/TunnyBrowser/hj;

    .line 20
    return-void
.end method

.method public b()Lmobi/mgeek/TunnyBrowser/hh;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lmobi/mgeek/TunnyBrowser/hh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmobi/mgeek/TunnyBrowser/hh;-><init>(Lmobi/mgeek/TunnyBrowser/hf;Lmobi/mgeek/TunnyBrowser/hg;)V

    return-object v0
.end method

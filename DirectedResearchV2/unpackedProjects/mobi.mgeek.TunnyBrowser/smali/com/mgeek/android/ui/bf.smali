.class Lcom/mgeek/android/ui/bf;
.super Ljava/lang/Object;
.source "ThreeScreenScrollableView.java"


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

.field private b:J

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)V
    .locals 2

    .prologue
    .line 568
    iput-object p1, p0, Lcom/mgeek/android/ui/bf;->a:Lcom/mgeek/android/ui/ThreeScreenScrollableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    new-instance v0, Lcom/mgeek/android/ui/bg;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mgeek/android/ui/bg;-><init>(Lcom/mgeek/android/ui/bf;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/bf;->h:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mgeek/android/ui/ThreeScreenScrollableView;Lcom/mgeek/android/ui/be;)V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/bf;-><init>(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)V

    return-void
.end method

.method static synthetic a(Lcom/mgeek/android/ui/bf;I)I
    .locals 0

    .prologue
    .line 568
    iput p1, p0, Lcom/mgeek/android/ui/bf;->f:I

    return p1
.end method

.method static synthetic a(Lcom/mgeek/android/ui/bf;)J
    .locals 2

    .prologue
    .line 568
    iget-wide v0, p0, Lcom/mgeek/android/ui/bf;->g:J

    return-wide v0
.end method

.method static synthetic b(Lcom/mgeek/android/ui/bf;)J
    .locals 2

    .prologue
    .line 568
    iget-wide v0, p0, Lcom/mgeek/android/ui/bf;->b:J

    return-wide v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgeek/android/ui/bf;->c:Z

    .line 620
    iget-object v0, p0, Lcom/mgeek/android/ui/bf;->h:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 621
    return-void
.end method

.method static synthetic c(Lcom/mgeek/android/ui/bf;)V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/mgeek/android/ui/bf;->c()V

    return-void
.end method

.method static synthetic d(Lcom/mgeek/android/ui/bf;)I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/mgeek/android/ui/bf;->d:I

    return v0
.end method

.method static synthetic e(Lcom/mgeek/android/ui/bf;)I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/mgeek/android/ui/bf;->e:I

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/mgeek/android/ui/bf;->c:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Lcom/mgeek/android/ui/bf;->f:I

    return v0
.end method

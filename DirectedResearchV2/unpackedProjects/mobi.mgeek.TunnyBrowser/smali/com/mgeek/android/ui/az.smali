.class public Lcom/mgeek/android/ui/az;
.super Ljava/lang/Object;
.source "TabHost.java"


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/TabHost;

.field private b:Ljava/lang/String;

.field private c:Lcom/mgeek/android/ui/aw;

.field private d:Lcom/mgeek/android/ui/av;


# direct methods
.method private constructor <init>(Lcom/mgeek/android/ui/TabHost;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/mgeek/android/ui/az;->a:Lcom/mgeek/android/ui/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p2, p0, Lcom/mgeek/android/ui/az;->b:Ljava/lang/String;

    .line 386
    return-void
.end method

.method synthetic constructor <init>(Lcom/mgeek/android/ui/TabHost;Ljava/lang/String;Lcom/mgeek/android/ui/at;)V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0, p1, p2}, Lcom/mgeek/android/ui/az;-><init>(Lcom/mgeek/android/ui/TabHost;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mgeek/android/ui/az;)Lcom/mgeek/android/ui/aw;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/mgeek/android/ui/az;->c:Lcom/mgeek/android/ui/aw;

    return-object v0
.end method

.method static synthetic b(Lcom/mgeek/android/ui/az;)Lcom/mgeek/android/ui/av;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/mgeek/android/ui/az;->d:Lcom/mgeek/android/ui/av;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/mgeek/android/ui/az;
    .locals 4

    .prologue
    .line 434
    new-instance v0, Lcom/mgeek/android/ui/ax;

    iget-object v1, p0, Lcom/mgeek/android/ui/az;->a:Lcom/mgeek/android/ui/TabHost;

    iget-object v2, p0, Lcom/mgeek/android/ui/az;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/mgeek/android/ui/ax;-><init>(Lcom/mgeek/android/ui/TabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/mgeek/android/ui/at;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/az;->d:Lcom/mgeek/android/ui/av;

    .line 435
    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/mgeek/android/ui/az;
    .locals 3

    .prologue
    .line 408
    new-instance v0, Lcom/mgeek/android/ui/ba;

    iget-object v1, p0, Lcom/mgeek/android/ui/az;->a:Lcom/mgeek/android/ui/TabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/mgeek/android/ui/ba;-><init>(Lcom/mgeek/android/ui/TabHost;Landroid/view/View;Lcom/mgeek/android/ui/at;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/az;->c:Lcom/mgeek/android/ui/aw;

    .line 409
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/mgeek/android/ui/az;->b:Ljava/lang/String;

    return-object v0
.end method

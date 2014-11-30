.class public Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$IndicatorStrategy;

.field private d:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p2, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->b:Ljava/lang/String;

    .line 387
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;Ljava/lang/String;Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$1;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;-><init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$IndicatorStrategy;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->c:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->d:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;
    .locals 4

    .prologue
    .line 402
    new-instance v0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;-><init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;IILcom/facebook/orca/common/ui/tabs/FragmentTabHost$1;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->d:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;

    .line 403
    return-object p0
.end method

.method public a(II)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;
    .locals 3

    .prologue
    .line 407
    new-instance v0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;-><init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;IILcom/facebook/orca/common/ui/tabs/FragmentTabHost$1;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->d:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;

    .line 408
    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;
    .locals 3

    .prologue
    .line 393
    new-instance v0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$ViewIndicatorStrategy;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$ViewIndicatorStrategy;-><init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;Landroid/view/View;Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$1;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->c:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$IndicatorStrategy;

    .line 394
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$TabSpec;->b:Ljava/lang/String;

    return-object v0
.end method

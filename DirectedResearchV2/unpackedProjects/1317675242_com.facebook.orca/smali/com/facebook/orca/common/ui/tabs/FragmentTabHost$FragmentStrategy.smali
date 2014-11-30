.class Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

.field private final b:I

.field private final c:I

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;II)V
    .locals 2

    .prologue
    .line 452
    iput-object p1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput p2, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;->b:I

    .line 454
    iput p3, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;->c:I

    .line 456
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 457
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 458
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->b()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 459
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 460
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 461
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 462
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;->d:Z

    .line 465
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;IILcom/facebook/orca/common/ui/tabs/FragmentTabHost$1;)V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;-><init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;II)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;->b:I

    return v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;->d:Z

    .line 481
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;->c:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$FragmentStrategy;->d:Z

    return v0
.end method

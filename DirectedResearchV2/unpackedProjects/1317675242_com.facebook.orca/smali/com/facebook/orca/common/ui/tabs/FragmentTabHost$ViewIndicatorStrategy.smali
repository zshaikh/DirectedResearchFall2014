.class Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$ViewIndicatorStrategy;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"

# interfaces
.implements Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$IndicatorStrategy;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

.field private final b:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$ViewIndicatorStrategy;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p2, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$ViewIndicatorStrategy;->b:Landroid/view/View;

    .line 436
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;Landroid/view/View;Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$1;)V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$ViewIndicatorStrategy;-><init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$ViewIndicatorStrategy;->b:Landroid/view/View;

    return-object v0
.end method

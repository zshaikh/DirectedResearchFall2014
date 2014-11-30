.class Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$2;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"

# interfaces
.implements Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$OnTabSelectionChanged;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$2;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$2;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->setCurrentTab(I)V

    .line 107
    if-eqz p2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$2;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 110
    :cond_0
    return-void
.end method

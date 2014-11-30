.class Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$1;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$1;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 88
    sparse-switch p2, :sswitch_data_0

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$1;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost$1;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->a(Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 95
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

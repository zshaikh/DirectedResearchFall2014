.class Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$3;
.super Ljava/lang/Object;
.source "ThreadViewMessageFragmentTab.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$3;->a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$3;->a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-static {v0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;Landroid/view/View;Landroid/view/View;)V

    .line 158
    return-void
.end method

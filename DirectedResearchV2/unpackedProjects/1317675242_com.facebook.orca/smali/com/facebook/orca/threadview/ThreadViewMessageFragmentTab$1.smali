.class Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$1;
.super Ljava/lang/Object;
.source "ThreadViewMessageFragmentTab.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$1;->a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$1;->a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-static {v0, p3}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;I)V

    .line 130
    return-void
.end method

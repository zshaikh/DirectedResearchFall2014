.class Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$1;
.super Ljava/lang/Object;
.source "ThreadViewMembersFragmentTab.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$1;->a:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

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
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$1;->a:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    invoke-static {v0, p3}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->a(Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;I)V

    .line 79
    return-void
.end method

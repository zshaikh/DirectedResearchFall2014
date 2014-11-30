.class Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$2;
.super Ljava/lang/Object;
.source "ThreadViewMembersFragmentTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$2;->a:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$2;->a:Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->a(Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;)Lcom/facebook/orca/threadview/ThreadViewActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->f()V

    .line 86
    return-void
.end method

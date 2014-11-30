.class Lcom/facebook/orca/threadlist/ThreadListActivity$1;
.super Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;
.source "ThreadListActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadlist/ThreadListActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$1;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/common/ui/titlebar/TitleBar;Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;)V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$1;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->e()V

    .line 166
    :cond_0
    return-void
.end method

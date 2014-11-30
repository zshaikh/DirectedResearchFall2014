.class Lcom/facebook/orca/threadlist/ThreadListActivity$5;
.super Ljava/lang/Object;
.source "ThreadListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadlist/ThreadListActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$5;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

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
    .line 217
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$5;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-static {v0, p3}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Lcom/facebook/orca/threadlist/ThreadListActivity;I)V

    .line 218
    return-void
.end method

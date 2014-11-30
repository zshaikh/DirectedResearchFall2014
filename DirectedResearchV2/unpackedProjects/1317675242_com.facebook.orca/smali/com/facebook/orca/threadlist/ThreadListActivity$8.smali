.class Lcom/facebook/orca/threadlist/ThreadListActivity$8;
.super Ljava/lang/Object;
.source "ThreadListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadlist/ThreadListActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$8;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$8;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->e(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    .line 552
    return-void
.end method

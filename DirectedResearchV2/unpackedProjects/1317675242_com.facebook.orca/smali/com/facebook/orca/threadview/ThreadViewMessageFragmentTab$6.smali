.class Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$6;
.super Ljava/lang/Object;
.source "ThreadViewMessageFragmentTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$6;->a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$6;->a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;Z)Z

    .line 434
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$6;->a:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->e(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;)V

    .line 435
    return-void
.end method

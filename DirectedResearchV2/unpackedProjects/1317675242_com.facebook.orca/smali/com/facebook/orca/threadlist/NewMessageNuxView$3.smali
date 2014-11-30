.class Lcom/facebook/orca/threadlist/NewMessageNuxView$3;
.super Ljava/lang/Object;
.source "NewMessageNuxView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadlist/NewMessageNuxView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/NewMessageNuxView;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView$3;->a:Lcom/facebook/orca/threadlist/NewMessageNuxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView$3;->a:Lcom/facebook/orca/threadlist/NewMessageNuxView;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->d(Lcom/facebook/orca/threadlist/NewMessageNuxView;)V

    .line 102
    return-void
.end method

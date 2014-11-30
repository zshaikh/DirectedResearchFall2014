.class Lcom/facebook/orca/threadlist/NewMessageNuxView$1;
.super Ljava/lang/Object;
.source "NewMessageNuxView.java"

# interfaces
.implements Lcom/facebook/orca/prefs/UiCounters$Listener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadlist/NewMessageNuxView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/NewMessageNuxView;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView$1;->a:Lcom/facebook/orca/threadlist/NewMessageNuxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    const-string v0, "dismissed_new_message_nux"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "compose_clicked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView$1;->a:Lcom/facebook/orca/threadlist/NewMessageNuxView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView$1;->a:Lcom/facebook/orca/threadlist/NewMessageNuxView;

    invoke-static {v1}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->a(Lcom/facebook/orca/threadlist/NewMessageNuxView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->a(Lcom/facebook/orca/threadlist/NewMessageNuxView;Z)Z

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView$1;->a:Lcom/facebook/orca/threadlist/NewMessageNuxView;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->b(Lcom/facebook/orca/threadlist/NewMessageNuxView;)V

    .line 66
    :cond_1
    return-void
.end method

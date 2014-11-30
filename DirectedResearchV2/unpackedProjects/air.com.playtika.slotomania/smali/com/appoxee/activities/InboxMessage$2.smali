.class Lcom/appoxee/activities/InboxMessage$2;
.super Ljava/lang/Object;
.source "InboxMessage.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appoxee/activities/InboxMessage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/activities/InboxMessage;


# direct methods
.method constructor <init>(Lcom/appoxee/activities/InboxMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/activities/InboxMessage$2;->this$0:Lcom/appoxee/activities/InboxMessage;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 101
    move-object v0, p1

    check-cast v0, Landroid/webkit/WebView;

    move-object v1, v0

    .line 102
    .local v1, "mWebView":Landroid/webkit/WebView;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 103
    packed-switch p2, :pswitch_data_0

    .line 113
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 105
    :pswitch_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    .line 110
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/appoxee/activities/InboxMessage$2;->this$0:Lcom/appoxee/activities/InboxMessage;

    invoke-virtual {v2}, Lcom/appoxee/activities/InboxMessage;->finish()V

    goto :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

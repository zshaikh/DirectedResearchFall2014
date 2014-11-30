.class Lcom/appoxee/activities/Inbox$2;
.super Landroid/content/BroadcastReceiver;
.source "Inbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appoxee/activities/Inbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/activities/Inbox;


# direct methods
.method constructor <init>(Lcom/appoxee/activities/Inbox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/activities/Inbox$2;->this$0:Lcom/appoxee/activities/Inbox;

    .line 535
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0x8

    .line 539
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 540
    .local v3, "extras":Landroid/os/Bundle;
    const-string v5, "count"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 543
    .local v0, "count":I
    iget-object v5, p0, Lcom/appoxee/activities/Inbox$2;->this$0:Lcom/appoxee/activities/Inbox;

    .line 544
    const-string v6, "empty_inbox"

    invoke-static {v6}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 543
    invoke-virtual {v5, v6}, Lcom/appoxee/activities/Inbox;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 545
    .local v2, "emptyInboxView":Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_0

    .line 546
    if-nez v0, :cond_2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    .line 547
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 553
    :cond_0
    :goto_0
    invoke-static {}, Lcom/appoxee/Appoxee;->getUnreadMessages()I

    move-result v4

    .line 554
    .local v4, "unreadMsgs":I
    if-eqz v4, :cond_1

    .line 555
    # getter for: Lcom/appoxee/activities/Inbox;->builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/appoxee/activities/Inbox;->access$1()Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "new messages: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "badge numbering"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 556
    iget-object v5, p0, Lcom/appoxee/activities/Inbox$2;->this$0:Lcom/appoxee/activities/Inbox;

    # getter for: Lcom/appoxee/activities/Inbox;->builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/appoxee/activities/Inbox;->access$1()Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/appoxee/activities/Inbox;->access$2(Lcom/appoxee/activities/Inbox;Landroid/app/AlertDialog;)V

    .line 557
    iget-object v5, p0, Lcom/appoxee/activities/Inbox$2;->this$0:Lcom/appoxee/activities/Inbox;

    # getter for: Lcom/appoxee/activities/Inbox;->dialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/appoxee/activities/Inbox;->access$3(Lcom/appoxee/activities/Inbox;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 562
    .end local v0    # "count":I
    .end local v2    # "emptyInboxView":Landroid/widget/RelativeLayout;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "unreadMsgs":I
    :cond_1
    :goto_1
    return-void

    .line 548
    .restart local v0    # "count":I
    .restart local v2    # "emptyInboxView":Landroid/widget/RelativeLayout;
    .restart local v3    # "extras":Landroid/os/Bundle;
    :cond_2
    if-lez v0, :cond_0

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 549
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    .end local v0    # "count":I
    .end local v2    # "emptyInboxView":Landroid/widget/RelativeLayout;
    .end local v3    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 560
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

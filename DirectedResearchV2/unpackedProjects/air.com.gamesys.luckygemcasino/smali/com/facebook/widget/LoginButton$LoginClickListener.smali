.class public Lcom/facebook/widget/LoginButton$LoginClickListener;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/LoginButton;


# direct methods
.method public constructor <init>(Lcom/facebook/widget/LoginButton;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 626
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v13}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 627
    .local v3, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton;->access$1(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;

    move-result-object v13

    invoke-virtual {v13}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v10

    .line 629
    .local v10, "openSession":Lcom/facebook/Session;
    if-eqz v10, :cond_7

    .line 631
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->confirmLogout:Z
    invoke-static {v13}, Lcom/facebook/widget/LoginButton;->access$2(Lcom/facebook/widget/LoginButton;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 633
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v13}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 634
    # getter for: Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/facebook/widget/LoginButton;->access$3()Lcom/adobe/fre/FREContext;

    move-result-object v13

    if-eqz v13, :cond_1

    # getter for: Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/facebook/widget/LoginButton;->access$3()Lcom/adobe/fre/FREContext;

    move-result-object v13

    const-string v15, "string.com_facebook_loginview_log_out_action"

    invoke-virtual {v13, v15}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v13

    .line 633
    :goto_0
    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 636
    .local v7, "logout":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v13}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 637
    # getter for: Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/facebook/widget/LoginButton;->access$3()Lcom/adobe/fre/FREContext;

    move-result-object v13

    if-eqz v13, :cond_2

    # getter for: Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/facebook/widget/LoginButton;->access$3()Lcom/adobe/fre/FREContext;

    move-result-object v13

    const-string v15, "string.com_facebook_loginview_cancel_action"

    invoke-virtual {v13, v15}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v13

    .line 636
    :goto_1
    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, "cancel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton;->access$4(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    move-result-object v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton;->access$4(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    move-result-object v13

    invoke-interface {v13}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 642
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v13}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 643
    # getter for: Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/facebook/widget/LoginButton;->access$3()Lcom/adobe/fre/FREContext;

    move-result-object v13

    if-eqz v13, :cond_3

    # getter for: Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/facebook/widget/LoginButton;->access$3()Lcom/adobe/fre/FREContext;

    move-result-object v13

    const-string v15, "string.com_facebook_loginview_logged_in_as"

    invoke-virtual {v13, v15}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v13

    .line 642
    :goto_2
    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    move-object/from16 v16, v0

    # getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;
    invoke-static/range {v16 .. v16}, Lcom/facebook/widget/LoginButton;->access$4(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 641
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 650
    .local v8, "message":Ljava/lang/String;
    :goto_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 651
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    new-instance v14, Lcom/facebook/widget/LoginButton$LoginClickListener$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10}, Lcom/facebook/widget/LoginButton$LoginClickListener$1;-><init>(Lcom/facebook/widget/LoginButton$LoginClickListener;Lcom/facebook/Session;)V

    invoke-virtual {v13, v7, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 657
    const/4 v14, 0x0

    invoke-virtual {v13, v2, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 658
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 696
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "cancel":Ljava/lang/String;
    .end local v3    # "context":Landroid/content/Context;
    .end local v7    # "logout":Ljava/lang/String;
    .end local v8    # "message":Ljava/lang/String;
    :cond_0
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v13}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v6

    .line 698
    .local v6, "logger":Lcom/facebook/AppEventsLogger;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 699
    .local v11, "parameters":Landroid/os/Bundle;
    const-string v14, "logging_in"

    if-eqz v10, :cond_d

    const/4 v13, 0x0

    :goto_5
    invoke-virtual {v11, v14, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 701
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton;->access$8(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14, v11}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 702
    return-void

    .line 635
    .end local v6    # "logger":Lcom/facebook/AppEventsLogger;
    .end local v11    # "parameters":Landroid/os/Bundle;
    .restart local v3    # "context":Landroid/content/Context;
    :cond_1
    const v13, 0x7f070005

    goto/16 :goto_0

    .line 638
    .restart local v7    # "logout":Ljava/lang/String;
    :cond_2
    const v13, 0x7f070006

    goto/16 :goto_1

    .line 644
    .restart local v2    # "cancel":Ljava/lang/String;
    :cond_3
    const v13, 0x7f070003

    goto :goto_2

    .line 646
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v13}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 647
    # getter for: Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/facebook/widget/LoginButton;->access$3()Lcom/adobe/fre/FREContext;

    move-result-object v13

    if-eqz v13, :cond_5

    # getter for: Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;
    invoke-static {}, Lcom/facebook/widget/LoginButton;->access$3()Lcom/adobe/fre/FREContext;

    move-result-object v13

    const-string v15, "string.com_facebook_loginview_logged_in_using_facebook"

    invoke-virtual {v13, v15}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v13

    .line 646
    :goto_6
    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "message":Ljava/lang/String;
    goto :goto_3

    .line 648
    .end local v8    # "message":Ljava/lang/String;
    :cond_5
    const v13, 0x7f070004

    goto :goto_6

    .line 660
    .end local v2    # "cancel":Ljava/lang/String;
    .end local v7    # "logout":Ljava/lang/String;
    :cond_6
    invoke-virtual {v10}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    goto :goto_4

    .line 663
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton;->access$1(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;

    move-result-object v13

    invoke-virtual {v13}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v4

    .line 664
    .local v4, "currentSession":Lcom/facebook/Session;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 665
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton;->access$1(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/facebook/internal/SessionTracker;->setSession(Lcom/facebook/Session;)V

    .line 666
    new-instance v13, Lcom/facebook/Session$Builder;

    invoke-direct {v13, v3}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$5(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v12

    .line 667
    .local v12, "session":Lcom/facebook/Session;
    invoke-static {v12}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 668
    move-object v4, v12

    .line 670
    .end local v12    # "session":Lcom/facebook/Session;
    :cond_9
    invoke-virtual {v4}, Lcom/facebook/Session;->isOpened()Z

    move-result v13

    if-nez v13, :cond_0

    .line 671
    const/4 v9, 0x0

    .line 672
    .local v9, "openRequest":Lcom/facebook/Session$OpenRequest;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton;->access$6(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 673
    new-instance v9, Lcom/facebook/Session$OpenRequest;

    .end local v9    # "openRequest":Lcom/facebook/Session$OpenRequest;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton;->access$6(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;

    move-result-object v13

    invoke-direct {v9, v13}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 678
    .end local v3    # "context":Landroid/content/Context;
    .restart local v9    # "openRequest":Lcom/facebook/Session$OpenRequest;
    :cond_a
    :goto_7
    if-eqz v9, :cond_0

    .line 679
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton;->access$7(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v13

    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/SessionDefaultAudience;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$0(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/SessionDefaultAudience;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/facebook/Session$OpenRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$OpenRequest;

    .line 680
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton;->access$7(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v13

    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$1(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 681
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton;->access$7(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v13

    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/SessionLoginBehavior;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$2(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/SessionLoginBehavior;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    .line 683
    sget-object v13, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton;->access$7(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v14

    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;
    invoke-static {v14}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$3(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/internal/SessionAuthorizationType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 684
    invoke-virtual {v4, v9}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    goto/16 :goto_4

    .line 674
    .restart local v3    # "context":Landroid/content/Context;
    :cond_b
    instance-of v13, v3, Landroid/app/Activity;

    if-eqz v13, :cond_a

    .line 675
    new-instance v9, Lcom/facebook/Session$OpenRequest;

    .end local v9    # "openRequest":Lcom/facebook/Session$OpenRequest;
    check-cast v3, Landroid/app/Activity;

    .end local v3    # "context":Landroid/content/Context;
    invoke-direct {v9, v3}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .restart local v9    # "openRequest":Lcom/facebook/Session$OpenRequest;
    goto :goto_7

    .line 687
    :cond_c
    :try_start_0
    invoke-virtual {v4, v9}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 688
    :catch_0
    move-exception v5

    .line 689
    .local v5, "e":Ljava/lang/UnsupportedOperationException;
    # getter for: Lcom/facebook/widget/LoginButton;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/widget/LoginButton;->access$0()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 699
    .end local v4    # "currentSession":Lcom/facebook/Session;
    .end local v5    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v9    # "openRequest":Lcom/facebook/Session$OpenRequest;
    .restart local v6    # "logger":Lcom/facebook/AppEventsLogger;
    .restart local v11    # "parameters":Landroid/os/Bundle;
    :cond_d
    const/4 v13, 0x1

    goto/16 :goto_5
.end method

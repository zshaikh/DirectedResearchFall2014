.class public Lcom/nativex/monetization/manager/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;
    }
.end annotation


# static fields
.field private static instance:Lcom/nativex/monetization/manager/DialogManager;

.field private static networkConnectionDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput-object v0, Lcom/nativex/monetization/manager/DialogManager;->instance:Lcom/nativex/monetization/manager/DialogManager;

    .line 50
    sput-object v0, Lcom/nativex/monetization/manager/DialogManager;->networkConnectionDialog:Landroid/app/Dialog;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$002(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/Dialog;

    .prologue
    .line 48
    sput-object p0, Lcom/nativex/monetization/manager/DialogManager;->networkConnectionDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private static dismissNetworkConnectionDialog()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/nativex/monetization/manager/DialogManager;->networkConnectionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/nativex/monetization/manager/DialogManager;->networkConnectionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/monetization/manager/DialogManager;->networkConnectionDialog:Landroid/app/Dialog;

    .line 72
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/nativex/monetization/manager/DialogManager;
    .locals 2

    .prologue
    .line 56
    const-class v0, Lcom/nativex/monetization/manager/DialogManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nativex/monetization/manager/DialogManager;->instance:Lcom/nativex/monetization/manager/DialogManager;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/nativex/monetization/manager/DialogManager;

    invoke-direct {v1}, Lcom/nativex/monetization/manager/DialogManager;-><init>()V

    sput-object v1, Lcom/nativex/monetization/manager/DialogManager;->instance:Lcom/nativex/monetization/manager/DialogManager;

    .line 59
    :cond_0
    sget-object v1, Lcom/nativex/monetization/manager/DialogManager;->instance:Lcom/nativex/monetization/manager/DialogManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/nativex/monetization/manager/DialogManager;->dismissNetworkConnectionDialog()V

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/monetization/manager/DialogManager;->instance:Lcom/nativex/monetization/manager/DialogManager;

    .line 65
    return-void
.end method


# virtual methods
.method protected createDialogStrings(Ljava/util/List;Ljava/util/List;)Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Message;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Violation;",
            ">;)",
            "Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/common/Message;>;"
    .local p2, "violations":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/common/Violation;>;"
    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v9, "\n\n"

    const-string v9, "\n"

    .line 376
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 377
    .local v6, "msgCount":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    .line 379
    .local v7, "vioCount":I
    add-int v9, v6, v7

    if-gtz v9, :cond_0

    move-object v9, v12

    .line 431
    .end local v6    # "msgCount":I
    .end local v7    # "vioCount":I
    .end local p0    # "this":Lcom/nativex/monetization/manager/DialogManager;
    :goto_0
    return-object v9

    .line 383
    .restart local v6    # "msgCount":I
    .restart local v7    # "vioCount":I
    .restart local p0    # "this":Lcom/nativex/monetization/manager/DialogManager;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v0, "dialogBody":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 385
    .local v2, "dialogTitle":Ljava/lang/String;
    new-instance v1, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;

    invoke-direct {v1, p0}, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;-><init>(Lcom/nativex/monetization/manager/DialogManager;)V

    .line 386
    .local v1, "dialogText":Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;
    add-int v9, v6, v7

    if-le v9, v11, :cond_4

    .line 387
    if-lez v6, :cond_1

    .line 388
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nativex/common/Message;

    .line 389
    .local v5, "message":Lcom/nativex/common/Message;
    invoke-virtual {v5}, Lcom/nativex/common/Message;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v5}, Lcom/nativex/common/Message;->getDisplayText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string v9, "\n\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response Message -> Reference Name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/nativex/common/Message;->getReferenceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Display Name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/nativex/common/Message;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Display Text"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/nativex/common/Message;->getDisplayText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 428
    .end local v0    # "dialogBody":Ljava/lang/StringBuilder;
    .end local v1    # "dialogText":Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;
    .end local v2    # "dialogTitle":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "message":Lcom/nativex/common/Message;
    .end local v6    # "msgCount":I
    .end local v7    # "vioCount":I
    .end local p0    # "this":Lcom/nativex/monetization/manager/DialogManager;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 429
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "DialogManager: Unexpected exception caught in createDialogStrings()."

    invoke-static {v9, v3}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v9, v12

    .line 431
    goto :goto_0

    .line 397
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "dialogBody":Ljava/lang/StringBuilder;
    .restart local v1    # "dialogText":Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;
    .restart local v2    # "dialogTitle":Ljava/lang/String;
    .restart local v6    # "msgCount":I
    .restart local v7    # "vioCount":I
    .restart local p0    # "this":Lcom/nativex/monetization/manager/DialogManager;
    :cond_1
    if-lez v7, :cond_3

    .line 398
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nativex/common/Violation;

    .line 399
    .local v8, "violation":Lcom/nativex/common/Violation;
    invoke-virtual {v8}, Lcom/nativex/common/Violation;->getEntity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v8}, Lcom/nativex/common/Violation;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v9, "\n\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response Violation -> Entity: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/nativex/common/Violation;->getEntity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/nativex/common/Violation;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 405
    .end local v8    # "violation":Lcom/nativex/common/Violation;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/4 v10, 0x2

    sub-int/2addr v9, v10

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 415
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local p0    # "this":Lcom/nativex/monetization/manager/DialogManager;
    :cond_3
    :goto_3
    add-int v9, v6, v7

    if-ne v9, v11, :cond_7

    .line 416
    if-ne v6, v11, :cond_6

    .line 417
    const/4 v9, 0x0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nativex/common/Message;

    invoke-virtual {p0}, Lcom/nativex/common/Message;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 425
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    .line 426
    iput-object v2, v1, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    move-object v9, v1

    .line 427
    goto/16 :goto_0

    .line 408
    .restart local p0    # "this":Lcom/nativex/monetization/manager/DialogManager;
    :cond_4
    if-ne v6, v11, :cond_5

    .line 409
    const/4 v9, 0x0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/nativex/monetization/manager/DialogManager;
    check-cast p0, Lcom/nativex/common/Message;

    invoke-virtual {p0}, Lcom/nativex/common/Message;->getDisplayText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 410
    .restart local p0    # "this":Lcom/nativex/monetization/manager/DialogManager;
    :cond_5
    if-ne v7, v11, :cond_3

    .line 411
    const/4 v9, 0x0

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/nativex/monetization/manager/DialogManager;
    check-cast p0, Lcom/nativex/common/Violation;

    invoke-virtual {p0}, Lcom/nativex/common/Violation;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 419
    :cond_6
    const/4 v9, 0x0

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nativex/common/Violation;

    invoke-virtual {p0}, Lcom/nativex/common/Violation;->getEntity()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 422
    :cond_7
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getApplicationName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_4
.end method

.method public declared-synchronized showMessagesDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Landroid/app/Dialog;
    .locals 8
    .param p1, "parent"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Message;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Violation;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/common/Message;>;"
    .local p3, "violations":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/common/Violation;>;"
    const/4 v7, 0x0

    .line 298
    monitor-enter p0

    if-nez p1, :cond_0

    .line 299
    :try_start_0
    const-string v5, "DialogManager.showMessageDialog: No parent context set"

    invoke-static {v5}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v7

    .line 360
    :goto_0
    monitor-exit p0

    return-object v5

    .line 302
    :cond_0
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    if-gtz v5, :cond_1

    .line 303
    const-string v5, "No messages or violations to display"

    invoke-static {v5}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    move-object v5, v7

    .line 304
    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/nativex/monetization/manager/DialogManager;->createDialogStrings(Ljava/util/List;Ljava/util/List;)Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;

    move-result-object v3

    .line 309
    .local v3, "dialogText":Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;
    if-nez v3, :cond_2

    move-object v5, v7

    .line 310
    goto :goto_0

    .line 313
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 314
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 316
    new-instance v2, Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    invoke-direct {v2, p1}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;-><init>(Landroid/content/Context;)V

    .line 317
    .local v2, "dialog":Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    iget-object v5, v3, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setTitle(Ljava/lang/String;)V

    .line 318
    iget-object v5, v3, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setMessage(Ljava/lang/String;)V

    .line 319
    const-string v5, "Ok"

    invoke-virtual {v2, v5}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setButtonText(Ljava/lang/String;)V

    .line 320
    new-instance v5, Lcom/nativex/monetization/manager/DialogManager$10;

    invoke-direct {v5, p0, v2}, Lcom/nativex/monetization/manager/DialogManager$10;-><init>(Lcom/nativex/monetization/manager/DialogManager;Lcom/nativex/monetization/dialogs/custom/MessageDialog;)V

    invoke-virtual {v2, v5}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    new-instance v5, Lcom/nativex/monetization/manager/DialogManager$11;

    invoke-direct {v5, p0}, Lcom/nativex/monetization/manager/DialogManager$11;-><init>(Lcom/nativex/monetization/manager/DialogManager;)V

    invoke-virtual {v2, v5}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 338
    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_3

    .line 339
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 340
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v2, v1}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 341
    new-instance v5, Lcom/nativex/monetization/manager/DialogManager$12;

    invoke-direct {v5, p0, v1, v2}, Lcom/nativex/monetization/manager/DialogManager$12;-><init>(Lcom/nativex/monetization/manager/DialogManager;Landroid/app/Activity;Lcom/nativex/monetization/dialogs/custom/MessageDialog;)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 355
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_3
    invoke-virtual {v2}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v2

    .line 356
    goto :goto_0

    .line 357
    .end local v2    # "dialog":Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    .end local v3    # "dialogText":Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 358
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "DialogManager: Unexpected exception caught in showMessagesDialog()."

    invoke-static {v5, v4}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v7

    .line 360
    goto :goto_0

    .line 298
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized showNoNetrowkConnectivityDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 168
    monitor-enter p0

    if-nez p1, :cond_0

    .line 169
    :try_start_0
    const-string v5, "DialogManager: showNoNetworkConnectivityDialog - No context set."

    invoke-static {v5}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v7

    .line 225
    :goto_0
    monitor-exit p0

    return-object v5

    .line 172
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/nativex/monetization/manager/DialogManager;->dismissNetworkConnectionDialog()V

    .line 173
    new-instance v5, Lcom/nativex/monetization/manager/ImageService;

    invoke-direct {v5}, Lcom/nativex/monetization/manager/ImageService;-><init>()V

    const-string v6, "logo.png"

    invoke-virtual {v5, p1, v6}, Lcom/nativex/monetization/manager/ImageService;->loadDrawableFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 174
    .local v2, "alertIcon":Landroid/graphics/drawable/Drawable;
    new-instance v3, Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    invoke-direct {v3, p1}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;-><init>(Landroid/content/Context;)V

    .line 175
    .local v3, "dialog":Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    sput-object v3, Lcom/nativex/monetization/manager/DialogManager;->networkConnectionDialog:Landroid/app/Dialog;

    .line 176
    const-string v5, "NativeX"

    invoke-virtual {v3, v5}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setTitle(Ljava/lang/String;)V

    .line 177
    sget-object v5, Lcom/nativex/monetization/enums/StringResources;->NO_NETWORK_CONNECTIVITY:Lcom/nativex/monetization/enums/StringResources;

    invoke-static {v5}, Lcom/nativex/monetization/manager/StringsManager;->getString(Lcom/nativex/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setMessage(Ljava/lang/String;)V

    .line 178
    const-string v5, "Connect"

    invoke-virtual {v3, v5}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setButtonText(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v3, v2}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 180
    new-instance v5, Lcom/nativex/monetization/manager/DialogManager$5;

    invoke-direct {v5, p0}, Lcom/nativex/monetization/manager/DialogManager$5;-><init>(Lcom/nativex/monetization/manager/DialogManager;)V

    invoke-virtual {v3, v5}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 190
    new-instance v5, Lcom/nativex/monetization/manager/DialogManager$6;

    invoke-direct {v5, p0, p1, v3}, Lcom/nativex/monetization/manager/DialogManager$6;-><init>(Lcom/nativex/monetization/manager/DialogManager;Landroid/content/Context;Lcom/nativex/monetization/dialogs/custom/MessageDialog;)V

    invoke-virtual {v3, v5}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 202
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 203
    .local v1, "activity":Landroid/app/Activity;
    invoke-static {v1}, Lcom/nativex/monetization/manager/DensityManager;->getDeviceScreenSize(Landroid/app/Activity;)Lcom/nativex/monetization/ui/DeviceScreenSize;

    .line 204
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->checkTheme()V

    .line 205
    invoke-virtual {v3, v1}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 206
    new-instance v5, Lcom/nativex/monetization/manager/DialogManager$7;

    invoke-direct {v5, p0, v1, v3}, Lcom/nativex/monetization/manager/DialogManager$7;-><init>(Lcom/nativex/monetization/manager/DialogManager;Landroid/app/Activity;Lcom/nativex/monetization/dialogs/custom/MessageDialog;)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 220
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_1
    invoke-virtual {v3}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v3

    .line 221
    goto :goto_0

    .line 222
    .end local v2    # "alertIcon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "dialog":Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 223
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "DialogManager: Unexpected exception caught in showNoNetrowkConnectivityDialog()."

    invoke-static {v5, v4}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v7

    .line 225
    goto :goto_0

    .line 168
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized showProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 238
    monitor-enter p0

    if-nez p1, :cond_0

    .line 239
    :try_start_0
    const-string v4, "DialogManager.showProgressDialog() - No context set"

    invoke-static {v4}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 277
    :goto_0
    monitor-exit p0

    return-object v4

    .line 242
    :cond_0
    :try_start_1
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 243
    .local v2, "dialog":Landroid/app/ProgressDialog;
    sget-object v4, Lcom/nativex/monetization/enums/StringResources;->PROGRESS_DIALOG_LOADING:Lcom/nativex/monetization/enums/StringResources;

    invoke-static {v4}, Lcom/nativex/monetization/manager/StringsManager;->getString(Lcom/nativex/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 245
    new-instance v4, Lcom/nativex/monetization/manager/DialogManager$8;

    invoke-direct {v4, p0}, Lcom/nativex/monetization/manager/DialogManager$8;-><init>(Lcom/nativex/monetization/manager/DialogManager;)V

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 254
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 255
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 256
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 257
    invoke-static {v1}, Lcom/nativex/monetization/manager/DensityManager;->getDeviceScreenSize(Landroid/app/Activity;)Lcom/nativex/monetization/ui/DeviceScreenSize;

    .line 258
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->checkTheme()V

    .line 259
    new-instance v4, Lcom/nativex/monetization/manager/DialogManager$9;

    invoke-direct {v4, p0, v1, v2}, Lcom/nativex/monetization/manager/DialogManager$9;-><init>(Lcom/nativex/monetization/manager/DialogManager;Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "activity":Landroid/app/Activity;
    :cond_1
    move-object v4, v2

    .line 273
    goto :goto_0

    .line 274
    .end local v2    # "dialog":Landroid/app/ProgressDialog;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 275
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "DialogManager: Unexpected exception caught in showProgressDialog()."

    invoke-static {v4, v3}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v5

    .line 277
    goto :goto_0

    .line 238
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized showRateUpgradeDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nativex/monetization/listeners/ClickListenerBase;I)Landroid/app/Dialog;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "buttonText"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "clickListener"    # Lcom/nativex/monetization/listeners/ClickListenerBase;
    .param p8, "rateUpgradeAction"    # I

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    new-instance v11, Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    invoke-direct {v11, p1}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;-><init>(Landroid/content/Context;)V

    .line 84
    .local v11, "dialog":Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 85
    move-object v0, v11

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setTitle(Ljava/lang/String;)V

    .line 86
    move-object v0, v11

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setMessage(Ljava/lang/String;)V

    .line 87
    move-object v0, v11

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setButtonText(Ljava/lang/String;)V

    .line 88
    instance-of v6, p1, Landroid/app/Activity;

    if-eqz v6, :cond_0

    .line 89
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v12, v0

    .line 90
    .local v12, "activity":Landroid/app/Activity;
    invoke-static {v12}, Lcom/nativex/monetization/manager/DensityManager;->getDeviceScreenSize(Landroid/app/Activity;)Lcom/nativex/monetization/ui/DeviceScreenSize;

    .line 91
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->checkTheme()V

    .line 92
    invoke-virtual {v11, v12}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 93
    new-instance v6, Lcom/nativex/monetization/manager/DialogManager$1;

    invoke-direct {v6, p0, v12, v11}, Lcom/nativex/monetization/manager/DialogManager$1;-><init>(Lcom/nativex/monetization/manager/DialogManager;Landroid/app/Activity;Lcom/nativex/monetization/dialogs/custom/MessageDialog;)V

    invoke-virtual {v12, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 107
    .end local v12    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v5, Lcom/nativex/monetization/manager/DialogManager$2;

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v5 .. v11}, Lcom/nativex/monetization/manager/DialogManager$2;-><init>(Lcom/nativex/monetization/manager/DialogManager;Landroid/content/Context;Ljava/lang/String;Lcom/nativex/monetization/listeners/ClickListenerBase;ILcom/nativex/monetization/dialogs/custom/MessageDialog;)V

    .line 126
    .local v5, "onOkClick":Landroid/view/View$OnClickListener;
    new-instance v13, Lcom/nativex/monetization/manager/DialogManager$3;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p7

    move/from16 v3, p8

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nativex/monetization/manager/DialogManager$3;-><init>(Lcom/nativex/monetization/manager/DialogManager;Lcom/nativex/monetization/listeners/ClickListenerBase;ILcom/nativex/monetization/dialogs/custom/MessageDialog;)V

    .line 143
    .local v13, "onClose":Landroid/view/View$OnClickListener;
    new-instance v6, Lcom/nativex/monetization/manager/DialogManager$4;

    invoke-direct {v6, p0}, Lcom/nativex/monetization/manager/DialogManager$4;-><init>(Lcom/nativex/monetization/manager/DialogManager;)V

    invoke-virtual {v11, v6}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 152
    invoke-virtual {v11, v5}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v11, v13}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setOnCloseListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {v11}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-object v11

    .line 83
    .end local v5    # "onOkClick":Landroid/view/View$OnClickListener;
    .end local v11    # "dialog":Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    .end local v13    # "onClose":Landroid/view/View$OnClickListener;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

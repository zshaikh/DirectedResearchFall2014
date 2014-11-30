.class Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;
.super Lcom/nativex/monetization/mraid/MRAIDDialogWorker;
.source "MRAIDWorkerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDWorkerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JSDialogWorker"
.end annotation


# instance fields
.field private final action:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

.field private dialog:Landroid/app/Dialog;

.field private dialogDismissed:Landroid/content/DialogInterface$OnDismissListener;

.field private jsResultHandled:Z

.field private message:Ljava/lang/String;

.field private result:Landroid/webkit/JsResult;


# direct methods
.method public constructor <init>(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;)V
    .locals 1
    .param p1, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;
    .param p5, "action"    # Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialog:Landroid/app/Dialog;

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->jsResultHandled:Z

    .line 402
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$1;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialogDismissed:Landroid/content/DialogInterface$OnDismissListener;

    .line 414
    iput-object p3, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->message:Ljava/lang/String;

    .line 415
    iput-object p4, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->result:Landroid/webkit/JsResult;

    .line 416
    iput-object p5, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->action:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    .line 417
    return-void
.end method

.method static synthetic access$1000(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->cancelResult()V

    return-void
.end method

.method static synthetic access$1100(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->confirmResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->confirmResult()V

    return-void
.end method

.method private buildAlertDialog(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 458
    const-string v0, "JS Alert"

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 459
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->message:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 460
    const v0, 0x104000a

    new-instance v1, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$2;

    invoke-direct {v1, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$2;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 468
    return-void
.end method

.method private buildBeforeUnloadDialog(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 473
    const-string v0, "Leaving page"

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 474
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->message:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 475
    const v0, 0x104000a

    new-instance v1, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$3;

    invoke-direct {v1, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$3;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 482
    const/high16 v0, 0x1040000

    new-instance v1, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$4;

    invoke-direct {v1, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$4;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 489
    return-void
.end method

.method private buildConfirmDialog(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 494
    const-string v0, "JS Confirm:"

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 495
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->message:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 496
    const v0, 0x104000a

    new-instance v1, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$5;

    invoke-direct {v1, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$5;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 503
    const/high16 v0, 0x1040000

    new-instance v1, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$6;

    invoke-direct {v1, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$6;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 510
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$7;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$7;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 516
    return-void
.end method

.method private buildPromptDialog(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;)V
    .locals 10
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x1

    .line 521
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 522
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 523
    .local v2, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 524
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 525
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 528
    .local v5, "textParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 529
    .local v4, "text":Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    iget-object v6, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->message:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 533
    .local v1, "editParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x40c00000

    invoke-static {p1, v6}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 534
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 535
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 536
    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 537
    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 538
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 539
    const-string v6, "Enter text"

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 541
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 542
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 544
    const-string v6, "JS Prompt:"

    invoke-virtual {p2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 545
    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 546
    const v6, 0x104000a

    new-instance v7, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$8;

    invoke-direct {v7, p0, v0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$8;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;Landroid/widget/EditText;)V

    invoke-virtual {p2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 553
    const/high16 v6, 0x1040000

    new-instance v7, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$9;

    invoke-direct {v7, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$9;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    invoke-virtual {p2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 560
    new-instance v6, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$10;

    invoke-direct {v6, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$10;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    invoke-virtual {p2, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 567
    return-void
.end method

.method private cancelResult()V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->result:Landroid/webkit/JsResult;

    if-eqz v0, :cond_0

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->jsResultHandled:Z

    .line 594
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 596
    :cond_0
    return-void
.end method

.method private confirmResult()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->result:Landroid/webkit/JsResult;

    if-eqz v0, :cond_0

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->jsResultHandled:Z

    .line 587
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 589
    :cond_0
    return-void
.end method

.method private confirmResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->result:Landroid/webkit/JsResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->result:Landroid/webkit/JsResult;

    instance-of v0, v0, Landroid/webkit/JsPromptResult;

    if-eqz v0, :cond_0

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->jsResultHandled:Z

    .line 580
    iget-object p0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->result:Landroid/webkit/JsResult;

    .end local p0    # "this":Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;
    check-cast p0, Landroid/webkit/JsPromptResult;

    invoke-virtual {p0, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 582
    :cond_0
    return-void
.end method

.method private createDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 433
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 434
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$1;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$JSDialogAction:[I

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->action:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    invoke-virtual {v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 437
    invoke-direct {p0, p1, v0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->buildAlertDialog(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;)V

    .line 452
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 441
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->buildBeforeUnloadDialog(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;)V

    goto :goto_0

    .line 445
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->buildConfirmDialog(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;)V

    goto :goto_0

    .line 449
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->buildPromptDialog(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;)V

    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialog:Landroid/app/Dialog;

    .line 574
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dismissDialog()V

    .line 600
    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->jsResultHandled:Z

    if-nez v0, :cond_0

    .line 601
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->cancelResult()V

    .line 603
    :cond_0
    return-void
.end method

.method public showDialog(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->finishWorker()V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 425
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->createDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialog:Landroid/app/Dialog;

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialogDismissed:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 428
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 429
    return-void
.end method

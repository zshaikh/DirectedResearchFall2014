.class Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;
.super Lcom/nativex/monetization/mraid/MRAIDDialogWorker;
.source "MRAIDWorkerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDWorkerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarWorker"
.end annotation


# instance fields
.field private closeListener:Landroid/view/View$OnClickListener;

.field private confirmationDialog:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

.field private data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

.field private listener:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;

.field private onProceed:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/mraid/objects/CalendarEntryData;)V
    .locals 1
    .param p1, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;
    .param p2, "data"    # Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 306
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$1;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->listener:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;

    .line 318
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$2;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$2;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->closeListener:Landroid/view/View$OnClickListener;

    .line 326
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$3;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$3;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;)V

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->onProceed:Landroid/view/View$OnClickListener;

    .line 302
    iput-object p2, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    .line 303
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->showDialog(Landroid/app/Activity;)V

    .line 304
    return-void
.end method

.method static synthetic access$700(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;
    .param p1, "x1"    # Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->addCalendarEntry(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V

    return-void
.end method

.method static synthetic access$800(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;)Lcom/nativex/monetization/mraid/objects/CalendarEntryData;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    return-object v0
.end method

.method private addCalendarEntry(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V
    .locals 4
    .param p1, "calendar"    # Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;

    .prologue
    .line 381
    :try_start_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-static {v1, p1, v2}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils;->createCalendarEntry(Landroid/app/Activity;Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;Lcom/nativex/monetization/mraid/objects/CalendarEntryData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->finishWorker()V

    .line 387
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CREATE_CALENDAR_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1, v2, v0, v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->finishWorker()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->finishWorker()V

    throw v1
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->dismiss()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    .line 349
    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->dismissDialog()V

    .line 391
    return-void
.end method

.method public showDialog(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->dismissDialog()V

    .line 355
    new-instance v1, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    invoke-direct {v1, p1}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    .line 356
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->listener:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->setOnCalendarClickedListener(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;)V

    .line 357
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->closeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->CALENDAR:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->getSupportLevel()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 359
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->closeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils;->queryCalendarsList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->addCalendars(Ljava/util/List;)V

    .line 361
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    const-string v2, "You are requested to add a calendar event. Please choose a calendar to add the event to:"

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->setBodyText(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    const-string v2, "Cancel"

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->setButtonText(Ljava/lang/String;)V

    .line 368
    :goto_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    invoke-virtual {v1}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->show()V

    .line 376
    :goto_1
    return-void

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->onProceed:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    const-string v2, "You are requested to add a calendar event."

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->setBodyText(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;

    const-string v2, "Proceed"

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog;->setButtonText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to create confirmation dialog when creating calendar event"

    invoke-static {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 372
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v1

    const-string v2, ""

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CREATE_CALENDAR_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1, v2, v0, v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->finishWorker()V

    goto :goto_1
.end method

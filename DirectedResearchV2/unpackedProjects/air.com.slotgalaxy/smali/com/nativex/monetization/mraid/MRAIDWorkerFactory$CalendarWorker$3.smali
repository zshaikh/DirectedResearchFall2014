.class Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$3;
.super Ljava/lang/Object;
.source "MRAIDWorkerFactory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$3;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$3;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$3;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;
    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->access$800(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;)Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils;->createCalendarEntry(Landroid/app/Activity;Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;Lcom/nativex/monetization/mraid/objects/CalendarEntryData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$3;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->finishWorker()V

    .line 341
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "Failed to create calendar entry"

    invoke-static {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$3;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$3;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v1

    const-string v2, "Could not create calendar event"

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CREATE_CALENDAR_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1, v2, v0, v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$3;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->finishWorker()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$3;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    invoke-virtual {v2}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->finishWorker()V

    throw v1
.end method

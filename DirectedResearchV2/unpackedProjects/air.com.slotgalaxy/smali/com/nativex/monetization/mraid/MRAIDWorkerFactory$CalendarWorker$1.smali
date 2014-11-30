.class Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$1;
.super Ljava/lang/Object;
.source "MRAIDWorkerFactory.java"

# interfaces
.implements Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;


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
    .line 306
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V
    .locals 1
    .param p1, "calendar"    # Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;

    .prologue
    .line 311
    if-eqz p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    # invokes: Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->addCalendarEntry(Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V
    invoke-static {v0, p1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->access$700(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V

    .line 313
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->dismissDialog()V

    .line 315
    :cond_0
    return-void
.end method

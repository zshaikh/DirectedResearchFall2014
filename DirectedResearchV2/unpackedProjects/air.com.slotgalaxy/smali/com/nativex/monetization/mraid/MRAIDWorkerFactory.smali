.class public Lcom/nativex/monetization/mraid/MRAIDWorkerFactory;
.super Ljava/lang/Object;
.source "MRAIDWorkerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$1;,
        Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;,
        Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;,
        Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    return-void
.end method

.method static final createCalendarWorker(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/mraid/objects/CalendarEntryData;)Lcom/nativex/monetization/mraid/MRAIDDialogWorker;
    .locals 1
    .param p0, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;
    .param p1, "data"    # Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    .prologue
    .line 78
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    invoke-direct {v0, p0, p1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/mraid/objects/CalendarEntryData;)V

    .line 79
    .local v0, "worker":Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;
    return-object v0
.end method

.method static final createJSDialogWorker(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;)Lcom/nativex/monetization/mraid/MRAIDDialogWorker;
    .locals 6
    .param p0, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/webkit/JsResult;
    .param p4, "action"    # Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    .prologue
    .line 88
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;)V

    .line 89
    .local v0, "worker":Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->showDialog(Landroid/app/Activity;)V

    .line 90
    return-object v0
.end method

.method static final createStorePictureWorker(Lcom/nativex/monetization/mraid/MRAIDContainer;Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDDialogWorker;
    .locals 1
    .param p0, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;-><init>(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    .line 70
    .local v0, "worker":Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;
    # setter for: Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->url:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->access$002(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->storePicture()V

    .line 72
    return-object v0
.end method

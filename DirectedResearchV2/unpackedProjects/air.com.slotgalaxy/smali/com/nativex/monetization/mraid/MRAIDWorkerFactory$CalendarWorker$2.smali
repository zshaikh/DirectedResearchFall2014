.class Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$2;
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
    .line 318
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$2;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$2;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->finishWorker()V

    .line 324
    return-void
.end method

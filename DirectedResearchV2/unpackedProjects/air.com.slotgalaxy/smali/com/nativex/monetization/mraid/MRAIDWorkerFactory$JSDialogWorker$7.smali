.class Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$7;
.super Ljava/lang/Object;
.source "MRAIDWorkerFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->buildConfirmDialog(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$7;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$7;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;

    # invokes: Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->cancelResult()V
    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->access$1000(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    .line 514
    return-void
.end method

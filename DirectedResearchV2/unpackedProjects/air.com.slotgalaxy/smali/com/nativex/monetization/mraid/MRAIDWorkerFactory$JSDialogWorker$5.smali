.class Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$5;
.super Ljava/lang/Object;
.source "MRAIDWorkerFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 496
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$5;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$5;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;

    # invokes: Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->confirmResult()V
    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->access$900(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    .line 501
    return-void
.end method

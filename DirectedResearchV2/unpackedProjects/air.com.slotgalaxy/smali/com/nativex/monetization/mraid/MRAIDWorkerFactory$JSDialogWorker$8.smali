.class Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$8;
.super Ljava/lang/Object;
.source "MRAIDWorkerFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->buildPromptDialog(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$8;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;

    iput-object p2, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$8;->val$edit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$8;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$8;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->confirmResult(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->access$1100(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;Ljava/lang/String;)V

    .line 551
    return-void
.end method

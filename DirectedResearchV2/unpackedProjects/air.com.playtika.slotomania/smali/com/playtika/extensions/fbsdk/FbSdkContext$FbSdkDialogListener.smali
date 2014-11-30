.class Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkDialogListener;
.super Ljava/lang/Object;
.source "FbSdkContext.java"

# interfaces
.implements Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/fbsdk/FbSdkContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FbSdkDialogListener"
.end annotation


# instance fields
.field private final cbid:Ljava/lang/String;

.field final synthetic this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;


# direct methods
.method public constructor <init>(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;)V
    .locals 0
    .param p2, "cbid"    # Ljava/lang/String;

    .prologue
    .line 757
    iput-object p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkDialogListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-object p2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkDialogListener;->cbid:Ljava/lang/String;

    .line 760
    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 5
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    const/16 v3, 0x1069

    const/4 v4, 0x0

    .line 764
    if-nez p2, :cond_0

    .line 765
    const-string v1, "Dialog success"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkDialogListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkDialogListener;->cbid:Ljava/lang/String;

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushSuccessToAS(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, p1}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$4(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 776
    :goto_0
    return-void

    .line 769
    :cond_0
    const-string v1, "Dialog error"

    invoke-static {p2, v1}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 771
    instance-of v1, p2, Lcom/facebook/FacebookServiceException;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/facebook/FacebookServiceException;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 772
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkDialogListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkDialogListener;->cbid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v1, v2, v4, v3}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 774
    :cond_1
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkDialogListener;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkContext;

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkContext$FbSdkDialogListener;->cbid:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkContext;->pushErrorToAS(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v1, v2, v4, v3}, Lcom/playtika/extensions/fbsdk/FbSdkContext;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkContext;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

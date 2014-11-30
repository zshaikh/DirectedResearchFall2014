.class Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$3;
.super Ljava/lang/Object;
.source "FbSdkWebDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->createCrossImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;


# direct methods
.method constructor <init>(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$3;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v4, ""

    .line 285
    new-instance v0, Lcom/facebook/FacebookServiceException;

    new-instance v1, Lcom/facebook/FacebookRequestError;

    const/16 v2, 0x1069

    const-string v3, ""

    const-string v3, ""

    invoke-direct {v1, v2, v4, v4}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    invoke-direct {v0, v1, v4}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    .line 286
    .local v0, "exception":Lcom/facebook/FacebookServiceException;
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$3;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->access$2(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;Ljava/lang/Throwable;)V

    .line 287
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$3;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    invoke-virtual {v1}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->dismiss()V

    .line 288
    return-void
.end method

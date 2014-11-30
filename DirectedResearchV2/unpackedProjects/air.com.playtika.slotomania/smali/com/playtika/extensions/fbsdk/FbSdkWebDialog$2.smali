.class Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$2;
.super Ljava/lang/Object;
.source "FbSdkWebDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$2;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 220
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 221
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$2;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;Landroid/os/Bundle;)V

    .line 222
    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$2;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    invoke-virtual {v1}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->dismiss()V

    .line 223
    return-void
.end method

.class Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$1;
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
    iput-object p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$1;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$1;->this$0:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    # invokes: Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;->access$0(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;Landroid/os/Bundle;)V

    .line 210
    return-void
.end method

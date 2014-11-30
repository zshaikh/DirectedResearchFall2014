.class Lcom/dolphin/browser/q/b/aa;
.super Ljava/lang/Object;
.source "EvernoteAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/y;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/y;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/dolphin/browser/q/b/aa;->a:Lcom/dolphin/browser/q/b/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 358
    const-string v0, "RegisterDialog"

    const-string v1, "Trigger dismiss event, should be canceled by user!"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/q/b/aa;->a:Lcom/dolphin/browser/q/b/y;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/y;->e(Lcom/dolphin/browser/q/b/y;)V

    .line 360
    return-void
.end method

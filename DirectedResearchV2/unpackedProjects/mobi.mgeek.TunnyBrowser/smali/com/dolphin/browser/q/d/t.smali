.class Lcom/dolphin/browser/q/d/t;
.super Ljava/lang/Object;
.source "TwitterAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/d/s;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/d/s;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/dolphin/browser/q/d/t;->a:Lcom/dolphin/browser/q/d/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 208
    const-string v0, "Twitter"

    const-string v1, "Trigger dismiss event, should be canceled by user!"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/dolphin/browser/q/d/t;->a:Lcom/dolphin/browser/q/d/s;

    invoke-static {v0}, Lcom/dolphin/browser/q/d/s;->a(Lcom/dolphin/browser/q/d/s;)V

    .line 210
    return-void
.end method

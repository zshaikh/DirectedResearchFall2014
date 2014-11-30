.class Lcom/dolphin/browser/DolphinService/ui/af;
.super Ljava/lang/Object;
.source "DolphinAccountActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/af;->b:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/af;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/af;->a:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a(Landroid/app/AlertDialog;IZ)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/af;->a:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a(Landroid/app/AlertDialog;IZ)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

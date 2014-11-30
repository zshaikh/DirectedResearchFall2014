.class Lcom/dolphin/browser/DolphinService/ui/am;
.super Ljava/lang/Object;
.source "DolphinConnectActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/am;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/am;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->b(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/am;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->b(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

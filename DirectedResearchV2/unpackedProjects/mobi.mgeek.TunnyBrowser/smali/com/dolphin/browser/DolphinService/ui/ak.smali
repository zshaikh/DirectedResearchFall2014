.class Lcom/dolphin/browser/DolphinService/ui/ak;
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
    .line 119
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/ak;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ak;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ak;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;->a(Lcom/dolphin/browser/DolphinService/ui/DolphinConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method
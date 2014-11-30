.class Lcom/dolphin/browser/titlebar/l;
.super Ljava/lang/Object;
.source "TitleBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/titlebar/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/titlebar/k;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/l;->a:Lcom/dolphin/browser/titlebar/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 187
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/l;->a:Lcom/dolphin/browser/titlebar/k;

    invoke-static {v0}, Lcom/dolphin/browser/titlebar/k;->c(Lcom/dolphin/browser/titlebar/k;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/l;->a:Lcom/dolphin/browser/titlebar/k;

    invoke-static {v0}, Lcom/dolphin/browser/titlebar/k;->c(Lcom/dolphin/browser/titlebar/k;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

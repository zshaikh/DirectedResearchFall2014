.class public Lcom/dolphin/browser/bookmark/bj;
.super Ljava/lang/Object;
.source "BookmarkMenu.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final a:Landroid/app/AlertDialog;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog;I)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/bj;->a:Landroid/app/AlertDialog;

    .line 335
    iput p2, p0, Lcom/dolphin/browser/bookmark/bj;->b:I

    .line 336
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 352
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bj;->a:Landroid/app/AlertDialog;

    instance-of v0, v0, Lcom/dolphin/browser/ui/fake/AlertDialog;

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bj;->a:Landroid/app/AlertDialog;

    check-cast v0, Lcom/dolphin/browser/ui/fake/AlertDialog;

    .line 356
    iget v2, p0, Lcom/dolphin/browser/bookmark/bj;->b:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog;->getButtonTextView(I)Landroid/widget/TextView;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 367
    :cond_0
    :goto_1
    return-void

    .line 352
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bj;->a:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/dolphin/browser/bookmark/bj;->b:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

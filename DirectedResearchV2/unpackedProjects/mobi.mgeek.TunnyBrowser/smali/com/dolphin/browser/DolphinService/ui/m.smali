.class Lcom/dolphin/browser/DolphinService/ui/m;
.super Ljava/lang/Object;
.source "ClearWordWatcherActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/m;->a:Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v1, v2

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/m;->a:Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->b(Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/m;->a:Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;->a(Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 108
    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

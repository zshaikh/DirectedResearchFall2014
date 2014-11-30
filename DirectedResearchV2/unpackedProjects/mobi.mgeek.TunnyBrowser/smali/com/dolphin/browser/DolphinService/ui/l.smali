.class Lcom/dolphin/browser/DolphinService/ui/l;
.super Ljava/lang/Object;
.source "ClearWordWatcherActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/l;->a:Lcom/dolphin/browser/DolphinService/ui/ClearWordWatcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    check-cast p1, Landroid/widget/TextView;

    .line 73
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    return-void
.end method

.class public Lcom/twitter/android/widget/IconTabHost;
.super Landroid/widget/TabHost;


# instance fields
.field private a:Lcom/twitter/android/widget/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/widget/n;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/widget/IconTabHost;->a:Lcom/twitter/android/widget/n;

    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/widget/IconTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TabHost;->dispatchWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/widget/IconTabHost;->getCurrentTab()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/widget/IconTabHost;->a:Lcom/twitter/android/widget/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/IconTabHost;->a:Lcom/twitter/android/widget/n;

    invoke-interface {v0}, Lcom/twitter/android/widget/n;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

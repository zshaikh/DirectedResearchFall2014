.class Lcom/dolphin/browser/tablist/cb;
.super Landroid/support/v4/view/ae;
.source "TabListPagerView.java"


# instance fields
.field final a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/tablist/ca;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/tablist/ca;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/dolphin/browser/tablist/cb;->b:Lcom/dolphin/browser/tablist/ca;

    invoke-direct {p0}, Landroid/support/v4/view/ae;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/dolphin/browser/tablist/cb;->a:Landroid/content/Context;

    .line 104
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x3

    return v0
.end method

.method public synthetic a(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tablist/cb;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cb;->b:Lcom/dolphin/browser/tablist/ca;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ca;->a(Lcom/dolphin/browser/tablist/ca;)[Lcom/dolphin/browser/tablist/g;

    move-result-object v0

    aget-object v0, v0, p2

    .line 121
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 122
    return-object v0
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 128
    check-cast p1, Landroid/support/v4/view/ViewPager;

    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cb;->b:Lcom/dolphin/browser/tablist/ca;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ca;->a(Lcom/dolphin/browser/tablist/ca;)[Lcom/dolphin/browser/tablist/g;

    move-result-object v0

    check-cast p3, Lcom/dolphin/browser/tablist/g;

    aput-object p3, v0, p2

    .line 130
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 140
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public b_()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

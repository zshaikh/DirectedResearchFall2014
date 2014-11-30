.class public Lcom/redbox/android/view/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030014

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 18
    .local v0, "dummy":Landroid/widget/LinearLayout;
    const v3, 0x7f07008b

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 19
    .local v1, "v2":Landroid/view/View;
    const v3, 0x7f07008a

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 24
    .local v2, "v3":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 26
    invoke-virtual {p0, v2}, Lcom/redbox/android/view/SearchView;->addView(Landroid/view/View;)V

    .line 27
    invoke-virtual {p0, v1}, Lcom/redbox/android/view/SearchView;->addView(Landroid/view/View;)V

    .line 28
    return-void
.end method

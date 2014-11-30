.class public Lcom/playhaven/sampleapp/DetailAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;,
        Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private details:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/playhaven/sampleapp/DetailAdapter;, "Lcom/playhaven/sampleapp/DetailAdapter<TT;>;"
    .local p3, "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 34
    iput-object p3, p0, Lcom/playhaven/sampleapp/DetailAdapter;->details:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 119
    .local p0, "this":Lcom/playhaven/sampleapp/DetailAdapter;, "Lcom/playhaven/sampleapp/DetailAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    .local p0, "this":Lcom/playhaven/sampleapp/DetailAdapter;, "Lcom/playhaven/sampleapp/DetailAdapter<TT;>;"
    move-object v9, p2

    .line 50
    .local v9, "v":Landroid/view/View;
    if-nez v9, :cond_5

    .line 51
    invoke-virtual {p0}, Lcom/playhaven/sampleapp/DetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 52
    .local v10, "vi":Landroid/view/LayoutInflater;
    const/high16 v11, 0x7f030000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 54
    new-instance v6, Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;

    const/4 v11, 0x0

    invoke-direct {v6, v11}, Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;-><init>(Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;)V

    .line 55
    .local v6, "holder":Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;, "Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;"
    const v11, 0x7f060001

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2    # "convertView":Landroid/view/View;
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, v6, Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;->topTxt:Landroid/widget/TextView;

    .line 56
    const v11, 0x7f060002

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, v6, Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;->detailTxt:Landroid/widget/TextView;

    .line 57
    const/high16 v11, 0x7f060000

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, v6, Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;->detailLinearLayout:Landroid/widget/LinearLayout;

    .line 59
    invoke-virtual {v9, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    .end local v10    # "vi":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v11, p0, Lcom/playhaven/sampleapp/DetailAdapter;->details:Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;

    .line 65
    .local v0, "detail":Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;, "Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;"
    if-eqz v0, :cond_4

    .line 67
    iget-object v8, v6, Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;->topTxt:Landroid/widget/TextView;

    .line 68
    .local v8, "topTxt":Landroid/widget/TextView;
    iget-object v3, v6, Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;->detailTxt:Landroid/widget/TextView;

    .line 69
    .local v3, "detailTxt":Landroid/widget/TextView;
    iget-object v1, v6, Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;->detailLinearLayout:Landroid/widget/LinearLayout;

    .line 71
    .local v1, "detailLinearLayout":Landroid/widget/LinearLayout;
    if-eqz v9, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;->getContentDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    if-eqz v8, :cond_1

    .line 76
    invoke-interface {v0}, Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "title":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 78
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .end local v7    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 84
    invoke-interface {v0}, Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;->getView()Landroid/view/View;

    move-result-object v4

    .line 85
    .local v4, "detailView":Landroid/view/View;
    if-eqz v4, :cond_7

    .line 86
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 93
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 94
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 95
    .local v2, "detailParent":Landroid/view/ViewGroup;
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 98
    .end local v2    # "detailParent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    .end local v4    # "detailView":Landroid/view/View;
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 106
    invoke-interface {v0}, Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;->getDetail()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "detail_str":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 108
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .end local v1    # "detailLinearLayout":Landroid/widget/LinearLayout;
    .end local v3    # "detailTxt":Landroid/widget/TextView;
    .end local v5    # "detail_str":Ljava/lang/String;
    .end local v8    # "topTxt":Landroid/widget/TextView;
    :cond_4
    :goto_3
    return-object v9

    .line 61
    .end local v0    # "detail":Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;, "Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;"
    .end local v6    # "holder":Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;, "Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;"
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;

    .restart local v6    # "holder":Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;, "Lcom/playhaven/sampleapp/DetailAdapter$ViewHolder;"
    goto :goto_0

    .line 80
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "detail":Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;, "Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;"
    .restart local v1    # "detailLinearLayout":Landroid/widget/LinearLayout;
    .restart local v3    # "detailTxt":Landroid/widget/TextView;
    .restart local v7    # "title":Ljava/lang/String;
    .restart local v8    # "topTxt":Landroid/widget/TextView;
    :cond_6
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 101
    .end local v7    # "title":Ljava/lang/String;
    .restart local v4    # "detailView":Landroid/view/View;
    :cond_7
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 110
    .end local v4    # "detailView":Landroid/view/View;
    .restart local v5    # "detail_str":Ljava/lang/String;
    :cond_8
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lcom/playhaven/sampleapp/DetailAdapter;, "Lcom/playhaven/sampleapp/DetailAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/dolphin/browser/bookmark/cy;
.super Landroid/widget/ArrayAdapter;
.source "TopPopupView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/dolphin/browser/bookmark/cp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/cw;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/cp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/bookmark/cw;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/cp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/cy;->a:Lcom/dolphin/browser/bookmark/cw;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 98
    iput-object p3, p0, Lcom/dolphin/browser/bookmark/cy;->b:Ljava/util/List;

    .line 99
    return-void
.end method


# virtual methods
.method public a(I)Lcom/dolphin/browser/bookmark/cp;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cy;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/cp;

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cy;->notifyDataSetInvalidated()V

    .line 103
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 106
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cy;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/cy;->a(I)Lcom/dolphin/browser/bookmark/cp;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/bookmark/cp;->a(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cy;->notifyDataSetChanged()V

    .line 110
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cy;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/cy;->a(I)Lcom/dolphin/browser/bookmark/cp;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 126
    if-nez p2, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cy;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030010

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/cy;->a(I)Lcom/dolphin/browser/bookmark/cp;

    move-result-object v1

    .line 133
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    .line 134
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/cp;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a016c

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 137
    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/cp;->a()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 138
    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/cp;->a()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 140
    return-object p2
.end method

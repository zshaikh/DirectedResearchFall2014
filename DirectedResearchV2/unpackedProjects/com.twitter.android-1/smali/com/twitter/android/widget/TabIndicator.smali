.class public Lcom/twitter/android/widget/TabIndicator;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lcom/twitter/android/widget/TabIndicator;
    .locals 2

    invoke-virtual {p2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TabIndicator;

    iget-object v1, v0, Lcom/twitter/android/widget/TabIndicator;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    if-lez p4, :cond_0

    iget-object v1, v0, Lcom/twitter/android/widget/TabIndicator;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/widget/TabHost;I)Lcom/twitter/android/widget/TabIndicator;
    .locals 2

    const v0, 0x7f03001f

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/twitter/android/widget/TabIndicator;->a(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/twitter/android/widget/TabIndicator;->d:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/widget/TabIndicator;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iput-boolean p1, p0, Lcom/twitter/android/widget/TabIndicator;->d:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/widget/TabIndicator;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    iget-object v0, p0, Lcom/twitter/android/widget/TabIndicator;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TabIndicator;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TabIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/TabIndicator;->b:Landroid/widget/ImageView;

    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TabIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/TabIndicator;->a:Landroid/widget/ImageView;

    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TabIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/TabIndicator;->c:Landroid/widget/TextView;

    return-void
.end method

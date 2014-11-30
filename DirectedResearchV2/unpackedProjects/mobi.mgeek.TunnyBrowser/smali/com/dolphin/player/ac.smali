.class public Lcom/dolphin/player/ac;
.super Landroid/widget/FrameLayout;
.source "ReplayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/dolphin/player/ad;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lcom/dolphin/player/ac;->a()V

    .line 18
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 21
    invoke-virtual {p0}, Lcom/dolphin/player/ac;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$layout;->replay:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dolphin/player/ae;->a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 22
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-virtual {p0, v0, v4}, Lcom/dolphin/player/ac;->addView(Landroid/view/View;I)V

    .line 25
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 26
    sget v0, Lcom/dolphin/player/R$id;->imageView_replay:I

    invoke-virtual {p0, v0}, Lcom/dolphin/player/ac;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 27
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/player/ad;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/dolphin/player/ac;->a:Lcom/dolphin/player/ad;

    .line 32
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/dolphin/player/R$id;->imageView_replay:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/player/ac;->a:Lcom/dolphin/player/ad;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/dolphin/player/ac;->a:Lcom/dolphin/player/ad;

    invoke-interface {v0}, Lcom/dolphin/player/ad;->a()V

    .line 44
    :cond_0
    return-void
.end method

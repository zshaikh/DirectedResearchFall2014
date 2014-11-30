.class Ldolphin/webkit/lk;
.super Landroid/widget/FrameLayout;
.source "ZoomControlExternal.java"


# instance fields
.field private a:Landroid/widget/ZoomControls;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    sget v0, Ldolphin/webkit/R$layout;->dw_zoom_magnify:I

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Ldolphin/webkit/WebKitResources;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 123
    sget v0, Ldolphin/webkit/R$id;->zoomControls:I

    invoke-virtual {p0, v0}, Ldolphin/webkit/lk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ZoomControls;

    iput-object v0, p0, Ldolphin/webkit/lk;->a:Landroid/widget/ZoomControls;

    .line 125
    sget v0, Ldolphin/webkit/R$id;->zoomMagnify:I

    invoke-virtual {p0, v0}, Ldolphin/webkit/lk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    return-void
.end method

.method private a(IFF)V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 140
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 141
    invoke-virtual {p0, v0}, Ldolphin/webkit/lk;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    invoke-virtual {p0, p1}, Ldolphin/webkit/lk;->setVisibility(I)V

    .line 143
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 135
    const/16 v0, 0x8

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ldolphin/webkit/lk;->a(IFF)V

    .line 136
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Ldolphin/webkit/lk;->a:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v2, p0, Ldolphin/webkit/lk;->a:Landroid/widget/ZoomControls;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 131
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {p0, v1, v0, v2}, Ldolphin/webkit/lk;->a(IFF)V

    .line 132
    return-void

    .line 130
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Ldolphin/webkit/lk;->a:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Ldolphin/webkit/lk;->a:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->hasFocus()Z

    move-result v0

    return v0
.end method

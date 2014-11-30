.class Ldolphin/webkit/lp;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/ll;

.field private b:F


# direct methods
.method private constructor <init>(Ldolphin/webkit/ll;)V
    .locals 0

    .prologue
    .line 964
    iput-object p1, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/ll;Ldolphin/webkit/lm;)V
    .locals 0

    .prologue
    .line 964
    invoke-direct {p0, p1}, Ldolphin/webkit/lp;-><init>(Ldolphin/webkit/ll;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 989
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->b(Ldolphin/webkit/ll;)F

    move-result v0

    .line 990
    iget-object v2, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v2}, Ldolphin/webkit/ll;->d(Ldolphin/webkit/ll;)F

    move-result v2

    .line 991
    iget-object v3, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    invoke-static {v3, v4}, Ldolphin/webkit/ll;->a(Ldolphin/webkit/ll;F)F

    .line 992
    iget-object v3, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-static {v3, v4}, Ldolphin/webkit/ll;->b(Ldolphin/webkit/ll;F)F

    .line 993
    cmpl-float v3, v0, v1

    if-nez v3, :cond_0

    cmpl-float v3, v2, v1

    if-nez v3, :cond_0

    move v0, v1

    .line 996
    :goto_0
    iget-object v2, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v2}, Ldolphin/webkit/ll;->a(Ldolphin/webkit/ll;)Ldolphin/webkit/ln;

    move-result-object v2

    invoke-static {v2, v0}, Ldolphin/webkit/ln;->a(Ldolphin/webkit/ln;F)V

    .line 997
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v2

    sub-float/2addr v0, v2

    iget v2, p0, Ldolphin/webkit/lp;->b:F

    add-float/2addr v2, v0

    .line 999
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->a(Ldolphin/webkit/ll;)Ldolphin/webkit/ln;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/ln;->b(Ldolphin/webkit/ln;)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 1000
    :goto_1
    if-eqz v0, :cond_2

    .line 1001
    iget v1, p0, Ldolphin/webkit/lp;->b:F

    add-float/2addr v1, v2

    iput v1, p0, Ldolphin/webkit/lp;->b:F

    .line 1005
    :goto_2
    return v0

    .line 993
    :cond_0
    iget-object v3, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v3}, Ldolphin/webkit/ll;->b(Ldolphin/webkit/ll;)F

    move-result v3

    sub-float/2addr v3, v0

    iget-object v4, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v4}, Ldolphin/webkit/ll;->b(Ldolphin/webkit/ll;)F

    move-result v4

    sub-float v0, v4, v0

    mul-float/2addr v0, v3

    iget-object v3, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v3}, Ldolphin/webkit/ll;->d(Ldolphin/webkit/ll;)F

    move-result v3

    sub-float/2addr v3, v2

    iget-object v4, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v4}, Ldolphin/webkit/ll;->d(Ldolphin/webkit/ll;)F

    move-result v4

    sub-float v2, v4, v2

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    goto :goto_0

    .line 999
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1003
    :cond_2
    iput v1, p0, Ldolphin/webkit/lp;->b:F

    goto :goto_2
.end method

.method public b(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1009
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget-object v3, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v3}, Ldolphin/webkit/ll;->g(Ldolphin/webkit/ll;)F

    move-result v3

    mul-float/2addr v3, v0

    .line 1013
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-virtual {v0, v3}, Ldolphin/webkit/ll;->e(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-virtual {v0}, Ldolphin/webkit/ll;->v()F

    move-result v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    :cond_0
    move v0, v2

    .line 1017
    :goto_0
    iget-object v4, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-virtual {v4, v3}, Ldolphin/webkit/ll;->d(F)F

    move-result v3

    iget-object v4, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-virtual {v4}, Ldolphin/webkit/ll;->v()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1019
    iget-object v4, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v4}, Ldolphin/webkit/ll;->h(Ldolphin/webkit/ll;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-virtual {v4, v3}, Ldolphin/webkit/ll;->f(F)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1020
    :cond_1
    iget-object v4, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v4, v2}, Ldolphin/webkit/ll;->b(Ldolphin/webkit/ll;Z)Z

    .line 1022
    iget-object v4, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v4}, Ldolphin/webkit/ll;->g(Ldolphin/webkit/ll;)F

    move-result v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    .line 1023
    iget-object v4, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v4}, Ldolphin/webkit/ll;->g(Ldolphin/webkit/ll;)F

    move-result v4

    const/high16 v5, 0x3fa00000

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1027
    :goto_1
    iget-object v4, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-virtual {v4, v3}, Ldolphin/webkit/ll;->d(F)F

    move-result v3

    .line 1029
    iget-object v4, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v4}, Ldolphin/webkit/ll;->g(Ldolphin/webkit/ll;)F

    move-result v4

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {}, Ldolphin/webkit/ll;->H()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 1037
    :cond_2
    :goto_2
    return v0

    :cond_3
    move v0, v1

    .line 1013
    goto :goto_0

    .line 1025
    :cond_4
    iget-object v4, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v4}, Ldolphin/webkit/ll;->g(Ldolphin/webkit/ll;)F

    move-result v4

    const v5, 0x3f4ccccd

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_1

    .line 1032
    :cond_5
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Ldolphin/webkit/ll;->a(FF)V

    .line 1033
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-virtual {v0, v3, v1}, Ldolphin/webkit/ll;->b(FZ)V

    .line 1034
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->m()V

    move v0, v2

    .line 1035
    goto :goto_2
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .prologue
    .line 1041
    invoke-virtual {p0, p1}, Ldolphin/webkit/lp;->a(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ldolphin/webkit/lp;->b(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1042
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->a(Ldolphin/webkit/ll;)Ldolphin/webkit/ln;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/ln;->a(Ldolphin/webkit/ln;)V

    .line 1043
    const/4 v0, 0x1

    .line 1045
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .prologue
    .line 968
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldolphin/webkit/ll;->a(Ldolphin/webkit/ll;Z)Z

    .line 969
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-virtual {v0}, Ldolphin/webkit/ll;->B()V

    .line 970
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->a(Ldolphin/webkit/ll;)Ldolphin/webkit/ln;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/ln;->a(Ldolphin/webkit/ln;)V

    .line 971
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-static {v0, v1}, Ldolphin/webkit/ll;->a(Ldolphin/webkit/ll;F)F

    .line 972
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    invoke-static {v0, v1}, Ldolphin/webkit/ll;->b(Ldolphin/webkit/ll;F)F

    .line 974
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    iget-object v1, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v1}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v2}, Ldolphin/webkit/ll;->b(Ldolphin/webkit/ll;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v3}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v3

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->h()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ldolphin/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    invoke-static {v0, v1}, Ldolphin/webkit/ll;->a(Ldolphin/webkit/ll;I)I

    .line 975
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    iget-object v1, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v1}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v2}, Ldolphin/webkit/ll;->d(Ldolphin/webkit/ll;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v3}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v3

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->i()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ldolphin/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    invoke-static {v0, v1}, Ldolphin/webkit/ll;->b(Ldolphin/webkit/ll;I)I

    .line 976
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v1}, Ldolphin/webkit/ll;->e(Ldolphin/webkit/ll;)I

    move-result v1

    iget-object v2, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v2}, Ldolphin/webkit/ll;->f(Ldolphin/webkit/ll;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 977
    iget-object v1, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v1}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->Y()Ldolphin/webkit/WebViewCore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 978
    iget-object v1, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v1}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->Y()Ldolphin/webkit/WebViewCore;

    move-result-object v1

    const/16 v2, 0x101

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 980
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->m:Ldolphin/webkit/ViewManager;

    invoke-virtual {v0}, Ldolphin/webkit/ViewManager;->b()V

    .line 981
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->R()V

    .line 982
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/lp;->b:F

    .line 983
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1049
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->h(Ldolphin/webkit/ll;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1050
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0, v1}, Ldolphin/webkit/ll;->b(Ldolphin/webkit/ll;Z)Z

    .line 1051
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    iget-object v3, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v3}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v3

    iget-object v4, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v4}, Ldolphin/webkit/ll;->i(Ldolphin/webkit/ll;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v5}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v5

    invoke-virtual {v5}, Ldolphin/webkit/WebViewClassic;->h()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ldolphin/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v3

    invoke-static {v0, v3}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;I)I

    .line 1052
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    iget-object v3, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v3}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v3

    iget-object v4, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v4}, Ldolphin/webkit/ll;->j(Ldolphin/webkit/ll;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v5}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v5

    invoke-virtual {v5}, Ldolphin/webkit/WebViewClassic;->i()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ldolphin/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v3

    invoke-static {v0, v3}, Ldolphin/webkit/ll;->d(Ldolphin/webkit/ll;I)I

    .line 1053
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    iget-object v3, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v3}, Ldolphin/webkit/ll;->i(Ldolphin/webkit/ll;)F

    move-result v3

    iget-object v4, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v4}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Ldolphin/webkit/WebViewClassic;->getViewWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;F)F

    .line 1054
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    iget-object v3, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v3}, Ldolphin/webkit/ll;->j(Ldolphin/webkit/ll;)F

    move-result v3

    iget-object v4, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v4}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Ldolphin/webkit/WebViewClassic;->getViewHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ldolphin/webkit/ll;->d(Ldolphin/webkit/ll;F)F

    .line 1056
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-virtual {v0}, Ldolphin/webkit/ll;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->g(Ldolphin/webkit/ll;)F

    move-result v0

    iget-object v3, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v3}, Ldolphin/webkit/ll;->k(Ldolphin/webkit/ll;)F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v3, v0

    const-wide v5, 0x3fc999999999999aL

    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->k(Ldolphin/webkit/ll;)F

    move-result v0

    float-to-double v7, v0

    mul-double/2addr v5, v7

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_3

    :cond_0
    move v0, v2

    .line 1059
    :goto_0
    iget-object v3, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-virtual {v3, v0}, Ldolphin/webkit/ll;->a(Z)V

    .line 1061
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_1

    .line 1063
    const-string v3, "auto fit"

    const-string v4, "pinchzoom"

    const-string v5, ""

    invoke-virtual {v0, v3, v4, v5}, Ldolphin/webkit/WebChromeClient;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ldolphin/webkit/WebViewClassic;->a(I)V

    .line 1067
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1068
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->w()V

    .line 1069
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->b(Z)V

    .line 1075
    :goto_1
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->m()V

    .line 1078
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->m:Ldolphin/webkit/ViewManager;

    invoke-virtual {v0}, Ldolphin/webkit/ViewManager;->c()V

    .line 1079
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewClassic;->a(Landroid/view/ScaleGestureDetector;)V

    .line 1080
    return-void

    :cond_3
    move v0, v1

    .line 1056
    goto :goto_0

    .line 1071
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/lp;->a:Ldolphin/webkit/ll;

    invoke-static {v0}, Ldolphin/webkit/ll;->c(Ldolphin/webkit/ll;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldolphin/webkit/WebViewClassic;->b(Z)V

    goto :goto_1
.end method

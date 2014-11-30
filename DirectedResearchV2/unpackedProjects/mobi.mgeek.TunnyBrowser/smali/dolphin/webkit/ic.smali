.class Ldolphin/webkit/ic;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ldolphin/webkit/fx;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ldolphin/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Ldolphin/webkit/WebViewClassic;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1464
    iput-object p1, p0, Ldolphin/webkit/ic;->b:Ldolphin/webkit/WebViewClassic;

    iput-object p2, p0, Ldolphin/webkit/ic;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 1467
    iget-object v0, p0, Ldolphin/webkit/ic;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1468
    iget-object v0, p0, Ldolphin/webkit/ic;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1469
    iget-object v0, p0, Ldolphin/webkit/ic;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, v9}, Ldolphin/webkit/WebViewClassic;->a(Z)V

    .line 1470
    iget-object v8, p0, Ldolphin/webkit/ic;->b:Ldolphin/webkit/WebViewClassic;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Ldolphin/webkit/ic;->b:Ldolphin/webkit/WebViewClassic;

    invoke-static {v7}, Ldolphin/webkit/WebViewClassic;->l(Ldolphin/webkit/WebViewClassic;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {v8, v0, v9}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;Landroid/view/MotionEvent;Z)Z

    .line 1471
    iget-object v0, p0, Ldolphin/webkit/ic;->b:Ldolphin/webkit/WebViewClassic;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Ldolphin/webkit/ic;->b:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->l(Ldolphin/webkit/WebViewClassic;)I

    move-result v2

    int-to-float v2, v2

    add-float v11, v1, v2

    move v12, v4

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v0, v1, v9}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;Landroid/view/MotionEvent;Z)Z

    .line 1473
    iget-object v0, p0, Ldolphin/webkit/ic;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 1474
    if-eqz v0, :cond_0

    .line 1475
    const-string v1, "link preview"

    const-string v2, "clickbtn"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/webkit/WebChromeClient;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    :cond_0
    return v9
.end method

.method public b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 1482
    iget-object v0, p0, Ldolphin/webkit/ic;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1483
    iget-object v0, p0, Ldolphin/webkit/ic;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Ldolphin/webkit/ic;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, v9}, Ldolphin/webkit/WebViewClassic;->a(Z)V

    .line 1485
    iget-object v8, p0, Ldolphin/webkit/ic;->b:Ldolphin/webkit/WebViewClassic;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Ldolphin/webkit/ic;->b:Ldolphin/webkit/WebViewClassic;

    invoke-static {v7}, Ldolphin/webkit/WebViewClassic;->l(Ldolphin/webkit/WebViewClassic;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {v8, v0, v9}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;Landroid/view/MotionEvent;Z)Z

    .line 1486
    iget-object v0, p0, Ldolphin/webkit/ic;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 1487
    if-eqz v0, :cond_0

    .line 1488
    const-string v1, "link preview"

    const-string v2, "clickbtn"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/webkit/WebChromeClient;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    :cond_0
    return v9
.end method

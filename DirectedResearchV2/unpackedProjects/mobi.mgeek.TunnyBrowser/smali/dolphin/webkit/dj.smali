.class Ldolphin/webkit/dj;
.super Landroid/view/SurfaceView;
.source "HTML5VideoFullScreen.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/dc;


# direct methods
.method public constructor <init>(Ldolphin/webkit/dc;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Ldolphin/webkit/dj;->a:Ldolphin/webkit/dc;

    .line 37
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Ldolphin/webkit/dj;->a:Ldolphin/webkit/dc;

    invoke-static {v0}, Ldolphin/webkit/dc;->a(Ldolphin/webkit/dc;)I

    move-result v0

    invoke-static {v0, p1}, Ldolphin/webkit/dj;->getDefaultSize(II)I

    move-result v1

    .line 43
    iget-object v0, p0, Ldolphin/webkit/dj;->a:Ldolphin/webkit/dc;

    invoke-static {v0}, Ldolphin/webkit/dc;->b(Ldolphin/webkit/dc;)I

    move-result v0

    invoke-static {v0, p2}, Ldolphin/webkit/dj;->getDefaultSize(II)I

    move-result v0

    .line 44
    iget-object v2, p0, Ldolphin/webkit/dj;->a:Ldolphin/webkit/dc;

    invoke-static {v2}, Ldolphin/webkit/dc;->a(Ldolphin/webkit/dc;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Ldolphin/webkit/dj;->a:Ldolphin/webkit/dc;

    invoke-static {v2}, Ldolphin/webkit/dc;->b(Ldolphin/webkit/dc;)I

    move-result v2

    if-lez v2, :cond_0

    .line 45
    iget-object v2, p0, Ldolphin/webkit/dj;->a:Ldolphin/webkit/dc;

    invoke-static {v2}, Ldolphin/webkit/dc;->a(Ldolphin/webkit/dc;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Ldolphin/webkit/dj;->a:Ldolphin/webkit/dc;

    invoke-static {v3}, Ldolphin/webkit/dc;->b(Ldolphin/webkit/dc;)I

    move-result v3

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 46
    iget-object v0, p0, Ldolphin/webkit/dj;->a:Ldolphin/webkit/dc;

    invoke-static {v0}, Ldolphin/webkit/dc;->b(Ldolphin/webkit/dc;)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v2, p0, Ldolphin/webkit/dj;->a:Ldolphin/webkit/dc;

    invoke-static {v2}, Ldolphin/webkit/dc;->a(Ldolphin/webkit/dc;)I

    move-result v2

    div-int/2addr v0, v2

    .line 51
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Ldolphin/webkit/dj;->setMeasuredDimension(II)V

    .line 52
    return-void

    .line 47
    :cond_1
    iget-object v2, p0, Ldolphin/webkit/dj;->a:Ldolphin/webkit/dc;

    invoke-static {v2}, Ldolphin/webkit/dc;->a(Ldolphin/webkit/dc;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Ldolphin/webkit/dj;->a:Ldolphin/webkit/dc;

    invoke-static {v3}, Ldolphin/webkit/dc;->b(Ldolphin/webkit/dc;)I

    move-result v3

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 48
    iget-object v1, p0, Ldolphin/webkit/dj;->a:Ldolphin/webkit/dc;

    invoke-static {v1}, Ldolphin/webkit/dc;->a(Ldolphin/webkit/dc;)I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v2, p0, Ldolphin/webkit/dj;->a:Ldolphin/webkit/dc;

    invoke-static {v2}, Ldolphin/webkit/dc;->b(Ldolphin/webkit/dc;)I

    move-result v2

    div-int/2addr v1, v2

    goto :goto_0
.end method

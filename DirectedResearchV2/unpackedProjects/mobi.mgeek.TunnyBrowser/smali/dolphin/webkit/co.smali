.class public Ldolphin/webkit/co;
.super Ldolphin/webkit/GLSurfaceView;
.source "GLView.java"


# instance fields
.field private mMainRenderer:Ldolphin/webkit/bz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v1, 0x5

    .line 28
    invoke-direct {p0, p1}, Ldolphin/webkit/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ldolphin/webkit/co;->setEGLContextClientVersion(I)V

    .line 31
    const/4 v2, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v6}, Ldolphin/webkit/co;->setEGLConfigChooser(IIIIII)V

    .line 32
    new-instance v0, Ldolphin/webkit/bz;

    invoke-direct {v0}, Ldolphin/webkit/bz;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/co;->mMainRenderer:Ldolphin/webkit/bz;

    .line 33
    iget-object v0, p0, Ldolphin/webkit/co;->mMainRenderer:Ldolphin/webkit/bz;

    invoke-virtual {p0, v0}, Ldolphin/webkit/co;->setRenderer(Ldolphin/webkit/cm;)V

    .line 34
    return-void
.end method


# virtual methods
.method public requestRender(Ldolphin/webkit/GLWebView;ILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ldolphin/webkit/co;->mMainRenderer:Ldolphin/webkit/bz;

    invoke-virtual {v0, p1, p2, p3}, Ldolphin/webkit/bz;->a(Ldolphin/webkit/GLWebView;ILandroid/graphics/Rect;)V

    .line 38
    invoke-virtual {p0}, Ldolphin/webkit/co;->requestRender()V

    .line 39
    return-void
.end method

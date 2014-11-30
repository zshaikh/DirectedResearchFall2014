.class Ldolphin/webkit/cn;
.super Ldolphin/webkit/cc;
.source "GLSurfaceView.java"


# instance fields
.field final synthetic j:Ldolphin/webkit/GLSurfaceView;


# direct methods
.method public constructor <init>(Ldolphin/webkit/GLSurfaceView;Z)V
    .locals 8

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x0

    .line 763
    iput-object p1, p0, Ldolphin/webkit/cn;->j:Ldolphin/webkit/GLSurfaceView;

    .line 764
    const/4 v3, 0x6

    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Ldolphin/webkit/cc;-><init>(Ldolphin/webkit/GLSurfaceView;IIIIII)V

    .line 765
    return-void

    :cond_0
    move v6, v5

    .line 764
    goto :goto_0
.end method

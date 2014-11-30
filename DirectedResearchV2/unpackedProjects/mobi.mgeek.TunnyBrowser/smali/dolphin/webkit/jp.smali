.class Ldolphin/webkit/jp;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# instance fields
.field a:I

.field b:Landroid/graphics/Point;

.field c:Landroid/graphics/Point;

.field d:I

.field e:Ldolphin/webkit/kc;

.field f:Z

.field g:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2520
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/jp;->a:I

    .line 2521
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/jp;->c:Landroid/graphics/Point;

    .line 2522
    return-void
.end method

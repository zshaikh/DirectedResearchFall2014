.class public Lcom/dolphin/browser/core/am;
.super Landroid/widget/FrameLayout;
.source "TabHostedView.java"


# instance fields
.field private a:Landroid/view/View;

.field private final b:Landroid/graphics/Matrix;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/core/am;->b:Landroid/graphics/Matrix;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/core/am;->c:Landroid/graphics/Rect;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dolphin/browser/core/am;->a:Landroid/view/View;

    .line 26
    invoke-virtual {p0}, Lcom/dolphin/browser/core/am;->removeAllViews()V

    .line 28
    iget-object v0, p0, Lcom/dolphin/browser/core/am;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/am;->addView(Landroid/view/View;)V

    .line 31
    return-void
.end method

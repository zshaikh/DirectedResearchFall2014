.class public final Lcom/dolphin/browser/tablist/e;
.super Ljava/lang/Object;
.source "AnimListItemParent.java"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/Rect;

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/e;->c:Z

    .line 38
    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/e;->d:Z

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/e;->a:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/e;->b:Landroid/graphics/Rect;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/e;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/e;->d:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/e;->c:Z

    .line 47
    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/e;->d:Z

    .line 48
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/e;->c:Z

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/e;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p3, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/e;->c:Z

    goto :goto_0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/tablist/e;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public b(IIII)V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/e;->d:Z

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/e;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p3, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/e;->d:Z

    goto :goto_0
.end method

.method public c()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/tablist/e;->b:Landroid/graphics/Rect;

    return-object v0
.end method

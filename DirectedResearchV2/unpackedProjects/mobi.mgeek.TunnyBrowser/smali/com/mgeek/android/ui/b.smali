.class Lcom/mgeek/android/ui/b;
.super Ljava/lang/Object;
.source "AidControlPanel.java"

# interfaces
.implements Lcom/g/a/b;


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/ab;

.field final synthetic b:Landroid/graphics/Rect;

.field final synthetic c:Lcom/mgeek/android/ui/a;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/a;Lcom/mgeek/android/ui/ab;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/mgeek/android/ui/b;->c:Lcom/mgeek/android/ui/a;

    iput-object p2, p0, Lcom/mgeek/android/ui/b;->a:Lcom/mgeek/android/ui/ab;

    iput-object p3, p0, Lcom/mgeek/android/ui/b;->b:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/a;)V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public b(Lcom/g/a/a;)V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public c(Lcom/g/a/a;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 301
    iget-object v0, p0, Lcom/mgeek/android/ui/b;->a:Lcom/mgeek/android/ui/ab;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/g/c/a;->g(Landroid/view/View;F)V

    .line 302
    iget-object v0, p0, Lcom/mgeek/android/ui/b;->a:Lcom/mgeek/android/ui/ab;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/g/c/a;->h(Landroid/view/View;F)V

    .line 303
    iget-object v0, p0, Lcom/mgeek/android/ui/b;->c:Lcom/mgeek/android/ui/a;

    iget-object v1, p0, Lcom/mgeek/android/ui/b;->a:Lcom/mgeek/android/ui/ab;

    iget-object v2, p0, Lcom/mgeek/android/ui/b;->b:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/mgeek/android/ui/a;->a(Lcom/mgeek/android/ui/a;Lcom/mgeek/android/ui/ab;Landroid/graphics/Rect;)V

    .line 304
    return-void
.end method

.method public d(Lcom/g/a/a;)V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

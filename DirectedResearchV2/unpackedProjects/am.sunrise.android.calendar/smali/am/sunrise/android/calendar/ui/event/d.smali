.class public Lam/sunrise/android/calendar/ui/event/d;
.super Ljava/lang/Object;
.source "AvatarTarget.java"

# interfaces
.implements Lcom/b/a/ay;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/d;->b:Ljava/lang/ref/WeakReference;

    .line 28
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/event/d;->a:Landroid/graphics/drawable/Drawable;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v1, Lam/sunrise/android/calendar/ui/utils/a;

    invoke-direct {v1, p1}, Lam/sunrise/android/calendar/ui/utils/a;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/utils/a;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/utils/a;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v3, v3, v0, v2}, Lam/sunrise/android/calendar/ui/utils/a;->setBounds(IIII)V

    .line 36
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    :cond_0
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_0
    return-void
.end method

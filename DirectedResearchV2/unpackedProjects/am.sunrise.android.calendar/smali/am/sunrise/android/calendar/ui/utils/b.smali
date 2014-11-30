.class public Lam/sunrise/android/calendar/ui/utils/b;
.super Ljava/lang/Object;
.source "TextViewCompoundDrawablePicassoTarget.java"

# interfaces
.implements Lcom/b/a/ay;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lam/sunrise/android/calendar/ui/utils/c;

.field private d:Lam/sunrise/android/calendar/ui/utils/d;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/TextView;Lam/sunrise/android/calendar/ui/utils/c;Lam/sunrise/android/calendar/ui/utils/d;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/utils/b;->a:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/utils/b;->b:Ljava/lang/ref/WeakReference;

    .line 46
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/utils/b;->c:Lam/sunrise/android/calendar/ui/utils/c;

    .line 47
    iput-object p4, p0, Lam/sunrise/android/calendar/ui/utils/b;->d:Lam/sunrise/android/calendar/ui/utils/d;

    .line 48
    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/utils/b;->e:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 87
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/utils/b;->c:Lam/sunrise/android/calendar/ui/utils/c;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/utils/c;->ordinal()I

    move-result v2

    aput-object p1, v1, v2

    .line 102
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/b;->d:Lam/sunrise/android/calendar/ui/utils/d;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/b;->d:Lam/sunrise/android/calendar/ui/utils/d;

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/utils/d;->a()V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/utils/b;->e:Z

    .line 56
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/utils/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 62
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 63
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/utils/b;->c(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/utils/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/utils/b;->c(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/utils/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/utils/b;->c(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :cond_0
    return-void
.end method

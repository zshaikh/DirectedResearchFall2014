.class Lam/sunrise/android/calendar/ui/event/h;
.super Ljava/lang/Object;
.source "CalendarSelectionAdapter.java"

# interfaces
.implements Lcom/b/a/ay;


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/event/g;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/Bitmap;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lam/sunrise/android/calendar/ui/event/g;Landroid/graphics/Bitmap;I)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/h;->a:Landroid/content/res/Resources;

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/h;->b:Ljava/lang/ref/WeakReference;

    .line 76
    iget-object v0, p2, Lam/sunrise/android/calendar/ui/event/g;->j:Ljava/lang/String;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/h;->c:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/event/h;->d:Landroid/graphics/Bitmap;

    .line 78
    iput p4, p0, Lam/sunrise/android/calendar/ui/event/h;->e:I

    .line 79
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/g;

    .line 117
    if-eqz v0, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/h;->c:Ljava/lang/String;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/g;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 83
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/h;->a:Landroid/content/res/Resources;

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 85
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/h;->e:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/event/h;->e:I

    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/g;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/g;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 89
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 93
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/g;

    .line 95
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/h;->a:Landroid/content/res/Resources;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/h;->d:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 96
    iget v2, p0, Lam/sunrise/android/calendar/ui/event/h;->e:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/event/h;->e:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    iget v0, v0, Lam/sunrise/android/calendar/ui/event/g;->k:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 98
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/g;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/g;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 105
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/g;

    .line 107
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/h;->a:Landroid/content/res/Resources;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/h;->d:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 108
    iget v2, p0, Lam/sunrise/android/calendar/ui/event/h;->e:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/event/h;->e:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    iget v0, v0, Lam/sunrise/android/calendar/ui/event/g;->k:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 110
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/g;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/g;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_0
    return-void
.end method

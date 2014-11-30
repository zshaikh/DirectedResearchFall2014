.class Lam/sunrise/android/calendar/ui/settings/a/v;
.super Ljava/lang/Object;
.source "SettingsVisibleCalendarsAdapter.java"

# interfaces
.implements Lcom/b/a/ay;


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/settings/a/u;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/Bitmap;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lam/sunrise/android/calendar/ui/settings/a/u;Landroid/graphics/Bitmap;I)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->a:Landroid/content/res/Resources;

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->b:Ljava/lang/ref/WeakReference;

    .line 80
    iget-object v0, p2, Lam/sunrise/android/calendar/ui/settings/a/u;->j:Ljava/lang/String;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->c:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->d:Landroid/graphics/Bitmap;

    .line 82
    iput p4, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->e:I

    .line 83
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/a/u;

    .line 121
    if-eqz v0, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->c:Ljava/lang/String;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->j:Ljava/lang/String;

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

    .line 87
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/a/v;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->a:Landroid/content/res/Resources;

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 89
    iget v0, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->e:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->e:I

    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/a/u;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 97
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/a/v;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/a/u;

    .line 99
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->a:Landroid/content/res/Resources;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->d:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 100
    iget v2, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->e:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->e:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 101
    iget v0, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->k:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 102
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/a/u;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 109
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/a/v;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/a/u;

    .line 111
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->a:Landroid/content/res/Resources;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->d:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 112
    iget v2, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->e:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->e:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    iget v0, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->k:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 114
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/v;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/a/u;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/settings/a/u;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_0
    return-void
.end method

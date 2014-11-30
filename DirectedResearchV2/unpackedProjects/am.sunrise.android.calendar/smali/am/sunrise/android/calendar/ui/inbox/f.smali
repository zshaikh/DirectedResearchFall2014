.class public Lam/sunrise/android/calendar/ui/inbox/f;
.super Ljava/lang/Object;
.source "InboxAdapter.java"

# interfaces
.implements Lcom/b/a/ay;


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/inbox/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/Bitmap;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lam/sunrise/android/calendar/ui/inbox/e;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/inbox/f;->a:Landroid/content/res/Resources;

    .line 157
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/f;->b:Ljava/lang/ref/WeakReference;

    .line 158
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/inbox/f;->c:Ljava/lang/String;

    .line 159
    iput-object p4, p0, Lam/sunrise/android/calendar/ui/inbox/f;->d:Landroid/graphics/Bitmap;

    .line 160
    iput p5, p0, Lam/sunrise/android/calendar/ui/inbox/f;->e:I

    .line 161
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/inbox/e;

    .line 190
    if-eqz v0, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/f;->c:Ljava/lang/String;

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/inbox/e;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/inbox/e;->W:Landroid/widget/ImageView;

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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/inbox/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/f;->a:Landroid/content/res/Resources;

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 167
    iget v0, p0, Lam/sunrise/android/calendar/ui/inbox/f;->e:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/inbox/f;->e:I

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 168
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/inbox/e;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/inbox/e;->W:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/inbox/f;->b(Landroid/graphics/drawable/Drawable;)V

    .line 175
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 179
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/inbox/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/inbox/e;

    .line 181
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/inbox/f;->a:Landroid/content/res/Resources;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/inbox/f;->d:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 182
    iget v2, p0, Lam/sunrise/android/calendar/ui/inbox/f;->e:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/inbox/f;->e:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 183
    iget v2, v0, Lam/sunrise/android/calendar/ui/inbox/e;->ae:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 184
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/inbox/e;->W:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    :cond_0
    return-void
.end method

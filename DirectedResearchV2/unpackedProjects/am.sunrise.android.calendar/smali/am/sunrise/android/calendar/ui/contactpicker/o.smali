.class Lam/sunrise/android/calendar/ui/contactpicker/o;
.super Ljava/lang/Object;
.source "ContactPickerPillView.java"

# interfaces
.implements Lcom/b/a/ay;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/o;->a:Ljava/lang/ref/WeakReference;

    .line 159
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/contactpicker/o;->b:Landroid/graphics/drawable/Drawable;

    .line 160
    iput p3, p0, Lam/sunrise/android/calendar/ui/contactpicker/o;->c:I

    .line 161
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 165
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;

    .line 167
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 168
    iget v2, p0, Lam/sunrise/android/calendar/ui/contactpicker/o;->c:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/o;->c:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 169
    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->a(Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/o;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->a(Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_0
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/o;->a:Ljava/lang/ref/WeakReference;

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
    .line 182
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/o;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->a(Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_0
    return-void
.end method

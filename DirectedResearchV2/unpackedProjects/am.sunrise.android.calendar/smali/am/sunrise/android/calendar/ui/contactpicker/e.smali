.class Lam/sunrise/android/calendar/ui/contactpicker/e;
.super Lam/sunrise/android/calendar/ui/event/d;
.source "ContactPickerAdapter.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/contactpicker/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/contactpicker/d;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p3, p4}, Lam/sunrise/android/calendar/ui/event/d;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/e;->a:Ljava/lang/ref/WeakReference;

    .line 84
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/contactpicker/e;->b:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/contactpicker/d;

    .line 90
    if-eqz v0, :cond_0

    iget-object v1, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->a:Lam/sunrise/android/calendar/api/models/datas/Contact;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->a:Lam/sunrise/android/calendar/api/models/datas/Contact;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lam/sunrise/android/calendar/ui/event/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

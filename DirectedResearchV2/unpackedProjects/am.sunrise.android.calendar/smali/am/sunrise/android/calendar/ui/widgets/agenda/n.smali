.class Lam/sunrise/android/calendar/ui/widgets/agenda/n;
.super Ljava/lang/Object;
.source "AgendaViewBirthdaysItem.java"

# interfaces
.implements Lcom/b/a/ay;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/widgets/agenda/l;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/n;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/n;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/n;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/l;Landroid/graphics/drawable/Drawable;)V

    .line 263
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/n;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/l;Landroid/graphics/drawable/Drawable;)V

    .line 268
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/n;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/l;Landroid/graphics/drawable/Drawable;)V

    .line 273
    return-void
.end method

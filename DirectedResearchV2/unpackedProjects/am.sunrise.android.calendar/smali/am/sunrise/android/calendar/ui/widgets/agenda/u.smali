.class Lam/sunrise/android/calendar/ui/widgets/agenda/u;
.super Ljava/lang/Object;
.source "AgendaViewTimeSectionItem.java"

# interfaces
.implements Lcom/b/a/ay;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/agenda/t;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/widgets/agenda/t;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/u;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/u;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/t;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/u;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/t;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/t;Landroid/graphics/drawable/Drawable;)V

    .line 283
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/u;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/t;Landroid/graphics/drawable/Drawable;)V

    .line 288
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/u;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/t;Landroid/graphics/drawable/Drawable;)V

    .line 293
    return-void
.end method

.class Lam/sunrise/android/calendar/ui/widgets/agenda/m;
.super Ljava/lang/Object;
.source "AgendaViewBirthdaysItem.java"

# interfaces
.implements Lcom/b/a/ay;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/widgets/agenda/l;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->b:Ljava/lang/String;

    .line 282
    iput p3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->c:I

    .line 283
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V
    .locals 5

    .prologue
    .line 287
    new-instance v0, Lam/sunrise/android/calendar/ui/utils/a;

    invoke-direct {v0, p1}, Lam/sunrise/android/calendar/ui/utils/a;-><init>(Landroid/graphics/Bitmap;)V

    .line 288
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->c:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/l;ILandroid/graphics/drawable/Drawable;II)V

    .line 289
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->invalidate()V

    .line 290
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 294
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->c:I

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/l;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->b(Lam/sunrise/android/calendar/ui/widgets/agenda/l;)I

    move-result v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    invoke-static {v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->b(Lam/sunrise/android/calendar/ui/widgets/agenda/l;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/l;ILandroid/graphics/drawable/Drawable;II)V

    .line 295
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->invalidate()V

    .line 296
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 300
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->c:I

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/l;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->b(Lam/sunrise/android/calendar/ui/widgets/agenda/l;)I

    move-result v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    invoke-static {v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->b(Lam/sunrise/android/calendar/ui/widgets/agenda/l;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/l;ILandroid/graphics/drawable/Drawable;II)V

    .line 301
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/m;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->invalidate()V

    .line 302
    return-void
.end method

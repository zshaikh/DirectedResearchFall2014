.class Lam/sunrise/android/calendar/ui/widgets/agenda/s;
.super Ljava/lang/Object;
.source "AgendaViewEventItem.java"

# interfaces
.implements Lcom/b/a/ay;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/widgets/agenda/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->b:Ljava/lang/String;

    .line 686
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    .line 710
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)Lam/sunrise/android/calendar/ui/mainview/k;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)Lam/sunrise/android/calendar/ui/mainview/k;

    move-result-object v0

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/mainview/k;->m:Ljava/lang/String;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)Lam/sunrise/android/calendar/ui/mainview/k;

    move-result-object v0

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)Lam/sunrise/android/calendar/ui/mainview/k;

    move-result-object v0

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->c:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)Lam/sunrise/android/calendar/ui/mainview/k;

    move-result-object v1

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/mainview/k;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)Lam/sunrise/android/calendar/ui/mainview/k;

    move-result-object v1

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/mainview/k;->n:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)I

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)Lam/sunrise/android/calendar/ui/mainview/k;

    move-result-object v0

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->u:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)Lam/sunrise/android/calendar/ui/mainview/k;

    move-result-object v1

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/mainview/k;->t:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V
    .locals 3

    .prologue
    .line 690
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;Landroid/graphics/drawable/Drawable;)V

    .line 693
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 697
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;Landroid/graphics/drawable/Drawable;)V

    .line 700
    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 704
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/s;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;Landroid/graphics/drawable/Drawable;)V

    .line 707
    :cond_0
    return-void
.end method

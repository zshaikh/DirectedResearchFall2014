.class public Lam/sunrise/android/calendar/widget/agenda/a;
.super Ljava/lang/Object;
.source "AvatarTransform.java"

# interfaces
.implements Lcom/b/a/ba;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lam/sunrise/android/calendar/widget/agenda/a;->a:I

    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 28
    iget v0, p0, Lam/sunrise/android/calendar/widget/agenda/a;->a:I

    iget v1, p0, Lam/sunrise/android/calendar/widget/agenda/a;->a:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 30
    new-instance v2, Lam/sunrise/android/calendar/ui/utils/a;

    invoke-direct {v2, p1}, Lam/sunrise/android/calendar/ui/utils/a;-><init>(Landroid/graphics/Bitmap;)V

    .line 31
    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/utils/a;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/utils/a;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Lam/sunrise/android/calendar/ui/utils/a;->setBounds(IIII)V

    .line 32
    invoke-virtual {v2, v1}, Lam/sunrise/android/calendar/ui/utils/a;->draw(Landroid/graphics/Canvas;)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rounded-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lam/sunrise/android/calendar/widget/agenda/a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

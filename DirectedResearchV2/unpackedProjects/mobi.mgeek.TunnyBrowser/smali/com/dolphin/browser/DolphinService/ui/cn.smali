.class Lcom/dolphin/browser/DolphinService/ui/cn;
.super Lcom/dolphin/browser/util/f;
.source "SignInButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/SignInButton;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/SignInButton;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/cn;->a:Lcom/dolphin/browser/DolphinService/ui/SignInButton;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/e;->a(Lcom/dolphin/browser/DolphinService/Account/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/cn;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/cn;->a:Lcom/dolphin/browser/DolphinService/ui/SignInButton;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 100
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/cn;->a:Lcom/dolphin/browser/DolphinService/ui/SignInButton;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->a(Lcom/dolphin/browser/DolphinService/ui/SignInButton;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/cn;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

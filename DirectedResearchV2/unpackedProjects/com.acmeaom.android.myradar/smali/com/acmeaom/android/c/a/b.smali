.class Lcom/acmeaom/android/c/a/b;
.super Landroid/widget/ArrayAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Landroid/view/LayoutInflater;

.field final synthetic b:Lcom/acmeaom/android/c/a/a;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/c/a/a;Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/acmeaom/android/c/a/b;->b:Lcom/acmeaom/android/c/a/a;

    iput-object p6, p0, Lcom/acmeaom/android/c/a/b;->a:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 245
    iget-object v0, p0, Lcom/acmeaom/android/c/a/b;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 246
    const v0, 0x7f080035

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 248
    const v1, 0x7f080036

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 250
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/c/a/b;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acmeaom/android/b/b/a;

    .line 251
    invoke-interface {v2}, Lcom/acmeaom/android/b/b/a;->b()Lcom/acmeaom/android/a/i/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/acmeaom/android/a/i/i;->a()Lcom/acmeaom/android/a/a/c/d;

    move-result-object v4

    iget-object v4, v4, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 252
    invoke-interface {v2}, Lcom/acmeaom/android/b/b/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    return-object v3
.end method

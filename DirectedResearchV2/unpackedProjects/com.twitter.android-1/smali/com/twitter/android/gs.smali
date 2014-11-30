.class public Lcom/twitter/android/gs;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/widget/TextView;

.field public f:I

.field public g:Landroid/widget/ImageView;

.field public h:Ljava/lang/String;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/view/View;

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f070094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/gs;->g:Landroid/widget/ImageView;

    const v0, 0x7f07009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/gs;->i:Landroid/widget/TextView;

    const v0, 0x7f07009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/gs;->a:Landroid/widget/TextView;

    const v0, 0x7f070099

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/gs;->j:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/client/e;)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/twitter/android/client/e;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/twitter/android/gs;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/gs;->g:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/twitter/android/client/e;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f02001a

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/twitter/android/gs;->l:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    new-instance v5, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v6, v3

    invoke-direct {v5, v7, v7, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    iget v6, p0, Lcom/twitter/android/gs;->l:I

    int-to-float v6, v6

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-direct {v2, v7, v7, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v5, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

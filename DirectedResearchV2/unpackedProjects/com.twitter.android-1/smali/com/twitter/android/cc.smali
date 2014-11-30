.class public final Lcom/twitter/android/cc;
.super Lcom/twitter/android/gs;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:J


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/twitter/android/gs;-><init>(Landroid/view/View;)V

    const v0, 0x7f07004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/cc;->g:Landroid/widget/ImageView;

    const v0, 0x7f070080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/cc;->a:Landroid/widget/TextView;

    const v0, 0x7f0700c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/cc;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/e;)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/cc;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cc;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/twitter/android/cc;->c:J

    iget-object v3, p0, Lcom/twitter/android/cc;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/twitter/android/cc;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/cc;->g:Landroid/widget/ImageView;

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

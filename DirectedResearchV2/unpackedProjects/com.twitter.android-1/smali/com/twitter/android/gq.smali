.class public final Lcom/twitter/android/gq;
.super Lcom/twitter/android/gs;


# instance fields
.field public a:Lcom/twitter/android/da;

.field public b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/twitter/android/gs;-><init>()V

    new-instance v0, Lcom/twitter/android/da;

    const v1, 0x7f07009e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/da;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/twitter/android/gq;->a:Lcom/twitter/android/da;

    const v0, 0x7f0700a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/gq;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/e;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/gq;->a:Lcom/twitter/android/da;

    iget-object v0, v0, Lcom/twitter/android/da;->c:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetView;->b()V

    return-void
.end method

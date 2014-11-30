.class final Lcom/twitter/android/i;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/twitter/android/widget/TweetView;

.field private b:Lcom/twitter/android/widget/NotchView;

.field private c:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetView;

    iput-object v0, p0, Lcom/twitter/android/i;->a:Lcom/twitter/android/widget/TweetView;

    const v0, 0x7f070079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/NotchView;

    iput-object v0, p0, Lcom/twitter/android/i;->b:Lcom/twitter/android/widget/NotchView;

    const v0, 0x7f07007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/i;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/i;->b:Lcom/twitter/android/widget/NotchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/i;->b:Lcom/twitter/android/widget/NotchView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/NotchView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/i;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/i;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/i;->b:Lcom/twitter/android/widget/NotchView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/i;->b:Lcom/twitter/android/widget/NotchView;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/NotchView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/i;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

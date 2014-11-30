.class final Lcom/twitter/android/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/twitter/android/StartActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/StartActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ac;->a:Lcom/twitter/android/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/ac;->a:Lcom/twitter/android/StartActivity;

    iget-object v0, v0, Lcom/twitter/android/StartActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ac;->a:Lcom/twitter/android/StartActivity;

    iget-object v0, v0, Lcom/twitter/android/StartActivity;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ac;->a:Lcom/twitter/android/StartActivity;

    iget-object v0, v0, Lcom/twitter/android/StartActivity;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/android/ac;->a:Lcom/twitter/android/StartActivity;

    iget-object v1, v1, Lcom/twitter/android/StartActivity;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.class final Lcom/twitter/android/ed;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final a:I

.field final b:Landroid/view/animation/Animation;

.field final c:Landroid/view/animation/Animation;

.field final d:Landroid/view/View;

.field final e:Landroid/view/ViewGroup;

.field private synthetic f:Lcom/twitter/android/TweetListFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetListFragment;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/animation/Animation;Landroid/view/animation/Animation;I)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ed;->f:Lcom/twitter/android/TweetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/ed;->d:Landroid/view/View;

    iput-object p3, p0, Lcom/twitter/android/ed;->e:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/twitter/android/ed;->c:Landroid/view/animation/Animation;

    iput-object p5, p0, Lcom/twitter/android/ed;->b:Landroid/view/animation/Animation;

    iput p6, p0, Lcom/twitter/android/ed;->a:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/ed;->f:Lcom/twitter/android/TweetListFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListFragment;->g(I)I

    iget-object v0, p0, Lcom/twitter/android/ed;->e:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/ed;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/ed;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/ed;->e:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

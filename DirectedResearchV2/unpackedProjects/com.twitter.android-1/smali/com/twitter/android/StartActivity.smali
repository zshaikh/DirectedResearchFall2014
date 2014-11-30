.class public Lcom/twitter/android/StartActivity;
.super Landroid/app/Activity;


# static fields
.field private static final i:[I


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Ljava/lang/Runnable;

.field c:J

.field d:Landroid/view/animation/Animation;

.field e:Landroid/view/animation/Animation;

.field f:Landroid/view/animation/Animation;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/ImageView;

.field private j:Landroid/view/animation/Animation$AnimationListener;

.field private k:J

.field private l:Lcom/twitter/android/client/e;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/android/StartActivity;->i:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020134
        0x7f020135
        0x7f020136
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/StartActivity;->a:Landroid/os/Handler;

    new-instance v0, Lcom/twitter/android/ac;

    invoke-direct {v0, p0}, Lcom/twitter/android/ac;-><init>(Lcom/twitter/android/StartActivity;)V

    iput-object v0, p0, Lcom/twitter/android/StartActivity;->b:Ljava/lang/Runnable;

    new-instance v0, Lcom/twitter/android/ab;

    invoke-direct {v0, p0}, Lcom/twitter/android/ab;-><init>(Lcom/twitter/android/StartActivity;)V

    iput-object v0, p0, Lcom/twitter/android/StartActivity;->j:Landroid/view/animation/Animation$AnimationListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/StartActivity;->m:I

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/StartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/StartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    iget v0, p0, Lcom/twitter/android/StartActivity;->m:I

    sget-object v1, Lcom/twitter/android/StartActivity;->i:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/twitter/android/StartActivity;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/StartActivity;->m:I

    :goto_0
    sget-object v0, Lcom/twitter/android/StartActivity;->i:[I

    iget v1, p0, Lcom/twitter/android/StartActivity;->m:I

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/StartActivity;->m:I

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/twitter/android/StartActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {p0}, Lcom/twitter/android/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/SignUpActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.intent.extra.INTENT"

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/twitter/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/WelcomeActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f07008e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/twitter/android/StartActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/StartActivity;->l:Lcom/twitter/android/client/e;

    iget-object v0, p0, Lcom/twitter/android/StartActivity;->l:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->o()V

    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lcom/twitter/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0165

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/twitter/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0166

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/twitter/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/StartActivity;->h:Landroid/widget/ImageView;

    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/twitter/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/StartActivity;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/twitter/android/StartActivity;->g:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/StartActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/twitter/android/StartActivity;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v0, 0x7f040000

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/StartActivity;->d:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/twitter/android/StartActivity;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/twitter/android/StartActivity;->d:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/twitter/android/StartActivity;->j:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f040001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/StartActivity;->e:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/twitter/android/StartActivity;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const v0, 0x7f040008

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/StartActivity;->f:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x2328

    iput-wide v0, p0, Lcom/twitter/android/StartActivity;->k:J

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/twitter/android/StartActivity;->l:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/StartActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/twitter/android/StartActivity;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/twitter/android/StartActivity;->f:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/twitter/android/StartActivity;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/twitter/android/StartActivity;->b:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/twitter/android/StartActivity;->k:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->S:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-wide v0, p0, Lcom/twitter/android/StartActivity;->c:J

    const-wide/16 v2, 0x2328

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/StartActivity;->k:J

    iget-object v0, p0, Lcom/twitter/android/StartActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/twitter/android/StartActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/android/StartActivity;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

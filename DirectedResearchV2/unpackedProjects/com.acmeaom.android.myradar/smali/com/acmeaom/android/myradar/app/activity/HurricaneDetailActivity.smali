.class public Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Number;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    if-nez p1, :cond_0

    const-string v0, "---"

    .line 62
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->a:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->b:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->c:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->d:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->e:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->f:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->g:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->h:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->i:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->j:Landroid/widget/TextView;

    .line 76
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->setContentView(I)V

    .line 29
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/acmeaom/android/myradar/b/a;->a(Landroid/app/Activity;Z)V

    .line 30
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->a()V

    .line 32
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 36
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->finish()V

    .line 58
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v1, "hurricane"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/c/g/d;

    .line 42
    if-nez v0, :cond_1

    .line 43
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 44
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->finish()V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/d;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/d;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/d;->n()Ljava/lang/Number;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->a(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mph"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/d;->g()Ljava/lang/Number;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->a(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mph"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/d;->j()Ljava/lang/Number;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->a(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/d;->k()Ljava/lang/Number;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->a(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mph"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/d;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 86
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 81
    :pswitch_0
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/HurricaneDetailActivity;->finish()V

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

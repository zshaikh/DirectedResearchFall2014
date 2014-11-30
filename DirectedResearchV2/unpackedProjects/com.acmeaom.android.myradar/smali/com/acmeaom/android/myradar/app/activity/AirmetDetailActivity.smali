.class public Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->a:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->b:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->c:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->d:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->e:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->f:Landroid/widget/TextView;

    .line 65
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->setContentView(I)V

    .line 28
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/acmeaom/android/myradar/b/a;->a(Landroid/app/Activity;Z)V

    .line 29
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->a()V

    .line 31
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 35
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->finish()V

    .line 56
    :goto_0
    return-void

    .line 39
    :cond_0
    const-string v1, "airmet"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/c/a/a;

    .line 41
    if-nez v0, :cond_1

    .line 42
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 43
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->finish()V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/a/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/a/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/a/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/a/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/a/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-static {}, Lcom/acmeaom/android/b/c/a/e;->b()Lcom/acmeaom/android/b/c/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/b/c/a/e;->a(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/d;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 75
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 70
    :pswitch_0
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/AirmetDetailActivity;->finish()V

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

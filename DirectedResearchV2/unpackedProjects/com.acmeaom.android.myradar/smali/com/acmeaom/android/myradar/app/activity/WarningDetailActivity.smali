.class public Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    return-void
.end method

.method private static a(Lcom/acmeaom/android/a/a/b/j;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    const-string v0, "---"

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MM/dd/yy hh:mma zzz"

    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/b/j;->e()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->f:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->a:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f080051

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->b:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f080050

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->c:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f080052

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->d:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->e:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->g:Landroid/widget/TextView;

    .line 109
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->setContentView(I)V

    .line 32
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->a()V

    .line 33
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/acmeaom/android/myradar/b/a;->a(Landroid/app/Activity;Z)V

    .line 35
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 40
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->finish()V

    .line 86
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v1, "warning"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/c/k/a;

    .line 46
    if-nez v0, :cond_1

    .line 47
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 48
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->finish()V

    goto :goto_0

    .line 52
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/k/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/k/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    sget-object v1, Lcom/acmeaom/android/myradar/app/activity/n;->a:[I

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/k/a;->k()Lcom/acmeaom/android/b/c/k/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acmeaom/android/b/c/k/d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 80
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/k/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/k/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/k/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/k/a;->e()Lcom/acmeaom/android/a/a/b/j;

    move-result-object v2

    invoke-static {v2}, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->a(Lcom/acmeaom/android/a/a/b/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/k/a;->f()Lcom/acmeaom/android/a/a/b/j;

    move-result-object v2

    invoke-static {v2}, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->a(Lcom/acmeaom/android/a/a/b/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/k/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 58
    :pswitch_1
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->f:Landroid/widget/ImageView;

    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 61
    :pswitch_2
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->f:Landroid/widget/ImageView;

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 64
    :pswitch_3
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->f:Landroid/widget/ImageView;

    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 117
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 119
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 114
    :pswitch_0
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/app/activity/WarningDetailActivity;->finish()V

    .line 115
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.class public Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;
.super Lam/sunrise/android/calendar/ui/a;
.source "FirstRunActivity.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/firstsync/g;


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/firstsync/e;

.field private b:I

.field private c:I

.field private d:Lcom/actionbarsherlock/view/MenuItem;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Z

.field private h:Ljava/lang/Runnable;

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/a;-><init>()V

    .line 43
    new-instance v0, Lam/sunrise/android/calendar/ui/firstsync/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/firstsync/e;-><init>(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;Lam/sunrise/android/calendar/ui/firstsync/a;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->a:Lam/sunrise/android/calendar/ui/firstsync/e;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->b:I

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->i:Landroid/os/Handler;

    .line 273
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->b:I

    return p1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->j:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 189
    iput p1, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->c:I

    .line 191
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    :cond_0
    new-instance v0, Lam/sunrise/android/calendar/ui/firstsync/b;

    invoke-direct {v0, p0, p1}, Lam/sunrise/android/calendar/ui/firstsync/b;-><init>(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;I)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->j:Ljava/lang/Runnable;

    .line 212
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->h()V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->a(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/aa;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()I

    .line 263
    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->i()V

    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->a(I)V

    return-void
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->j()V

    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 159
    iget v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->b:I

    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 161
    :pswitch_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->j()V

    goto :goto_0

    .line 165
    :pswitch_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/c;->b(Landroid/content/Context;)V

    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->startActivity(Landroid/content/Intent;)V

    .line 167
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->finish()V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private i()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Lam/sunrise/android/calendar/ui/firstsync/c;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/firstsync/c;-><init>(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;)V

    .line 231
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->g:Z

    if-eqz v1, :cond_0

    .line 232
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->h:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Lam/sunrise/android/calendar/ui/firstsync/d;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/firstsync/d;-><init>(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;)V

    .line 250
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->g:Z

    if-eqz v1, :cond_0

    .line 251
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->h:Ljava/lang/Runnable;

    goto :goto_0
.end method


# virtual methods
.method public g()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->e:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    instance-of v1, v0, Lam/sunrise/android/calendar/ui/settings/w;

    if-eqz v1, :cond_0

    .line 149
    check-cast v0, Lam/sunrise/android/calendar/ui/settings/w;

    invoke-virtual {v0, p1, p2, p3}, Lam/sunrise/android/calendar/ui/settings/w;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lam/sunrise/android/calendar/ui/a;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 68
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 74
    :cond_0
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->setContentView(I)V

    .line 76
    if-eqz p1, :cond_1

    .line 77
    const-string v0, "saved_step"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->b:I

    .line 78
    const-string v0, "saved_connections_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->c:I

    .line 81
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->getSupportLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/16 v1, 0x7e8

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->a:Lam/sunrise/android/calendar/ui/firstsync/e;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 114
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    .line 115
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v3, 0x7f110006

    invoke-virtual {v0, v3, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 116
    const v0, 0x7f0b0177

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->d:Lcom/actionbarsherlock/view/MenuItem;

    .line 117
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->d:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->e:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->e:Landroid/view/View;

    new-instance v3, Lam/sunrise/android/calendar/ui/firstsync/a;

    invoke-direct {v3, p0}, Lam/sunrise/android/calendar/ui/firstsync/a;-><init>(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->e:Landroid/view/View;

    const v3, 0x7f0b003d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->f:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->f:Landroid/widget/TextView;

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {p0, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    iget v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->b:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_0
    return v1

    .line 128
    :pswitch_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->d:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->f:Landroid/widget/TextView;

    const v3, 0x7f0f004b

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->e:Landroid/view/View;

    iget v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->c:I

    if-lt v0, v1, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 137
    :pswitch_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->f:Landroid/widget/TextView;

    const v2, 0x7f0f0048

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->g:Z

    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    :cond_0
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/a;->onPause()V

    .line 110
    return-void
.end method

.method public onResumeFragments()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/a;->onResumeFragments()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->g:Z

    .line 96
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->h:Ljava/lang/Runnable;

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->h:Ljava/lang/Runnable;

    .line 99
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 101
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    const-string v0, "saved_step"

    iget v1, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string v0, "saved_connections_count"

    iget v1, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    return-void
.end method

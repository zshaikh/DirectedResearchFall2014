.class public Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;
.super Lam/sunrise/android/calendar/ui/a;
.source "AddEventActivity.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/event/add/aa;


# instance fields
.field private a:Landroid/view/View;

.field private b:Z

.field private c:Lam/sunrise/android/calendar/ui/event/add/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/a;-><init>()V

    .line 131
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 113
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->b:Z

    .line 114
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->a:Landroid/view/View;

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->b:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 117
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->c:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->d()V

    .line 121
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->c:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/event/add/b;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->c:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/event/add/b;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/a;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f0b0064

    .line 37
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 43
    :cond_0
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 47
    if-nez p1, :cond_2

    .line 48
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->a()Landroid/support/v4/app/aa;

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "am.sunrise.android.calendar.extra.START_DATE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    const-string v2, "am.sunrise.android.calendar.extra.DATE_TIME"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "am.sunrise.android.calendar.extra.DATE_TIME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_1
    new-instance v2, Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/event/add/c;-><init>()V

    iput-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->c:Lam/sunrise/android/calendar/ui/event/add/c;

    .line 63
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->c:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-virtual {v2, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->setArguments(Landroid/os/Bundle;)V

    .line 64
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->c:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-virtual {v0, v6, v1}, Landroid/support/v4/app/aa;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 65
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()I

    goto :goto_0

    .line 55
    :cond_1
    const-string v2, "am.sunrise.android.calendar.extra.START_DATE"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "am.sunrise.android.calendar.extra.START_DATE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "am.sunrise.android.calendar.extra.END_DATE"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "am.sunrise.android.calendar.extra.END_DATE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "am.sunrise.android.calendar.extra.IS_ALL_DAY"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "am.sunrise.android.calendar.extra.IS_ALL_DAY"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/add/c;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->c:Lam/sunrise/android/calendar/ui/event/add/c;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    .line 74
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110001

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 75
    const v0, 0x7f0b0175

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->a:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->a:Landroid/view/View;

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->b:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->a:Landroid/view/View;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/add/a;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/add/a;-><init>(Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->a:Landroid/view/View;

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 91
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;->h()V

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

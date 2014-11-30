.class public Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;
.super Lam/sunrise/android/calendar/ui/a;
.source "EditEventActivity.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lam/sunrise/android/calendar/ui/event/edit/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/a;-><init>()V

    .line 116
    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->b:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->d()V

    .line 106
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->b:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/event/edit/b;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->b:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/event/edit/b;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/a;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0b0064

    .line 38
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 44
    :cond_0
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    if-nez p1, :cond_1

    .line 49
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->a()Landroid/support/v4/app/aa;

    .line 51
    new-instance v1, Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/event/edit/c;-><init>()V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->b:Lam/sunrise/android/calendar/ui/event/edit/c;

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string v2, "am.sunrise.android.calendar.extra.EVENT_INFO"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "am.sunrise.android.calendar.extra.EVENT_INFO"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    const-string v2, "am.sunrise.android.calendar.extra.OCCURRENCE_INFO"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "am.sunrise.android.calendar.extra.OCCURRENCE_INFO"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->b:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-virtual {v2, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->setArguments(Landroid/os/Bundle;)V

    .line 58
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->b:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/aa;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 59
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()I

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/edit/c;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->b:Lam/sunrise/android/calendar/ui/event/edit/c;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2

    .prologue
    .line 67
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    .line 68
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110004

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 69
    const v0, 0x7f0b0178

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->a:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->a:Landroid/view/View;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/edit/a;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/edit/a;-><init>(Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->a:Landroid/view/View;

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 84
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 86
    :pswitch_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;->h()V

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

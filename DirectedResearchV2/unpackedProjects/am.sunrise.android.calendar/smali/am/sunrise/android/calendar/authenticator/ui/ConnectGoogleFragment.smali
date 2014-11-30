.class public Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ConnectGoogleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lam/sunrise/android/calendar/authenticator/ui/k;

.field private b:Lam/sunrise/android/calendar/authenticator/ui/p;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 37
    new-instance v0, Lam/sunrise/android/calendar/authenticator/ui/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/authenticator/ui/p;-><init>(Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;Lam/sunrise/android/calendar/authenticator/ui/o;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->b:Lam/sunrise/android/calendar/authenticator/ui/p;

    .line 40
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;)Lam/sunrise/android/calendar/authenticator/ui/k;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/authenticator/ui/WebAuthenticationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    const-string v1, "am.sunrise.android.calendar.extra.TITLE"

    const v2, 0x7f0f00c8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string v1, "am.sunrise.android.calendar.extra.URL"

    const-string v2, "https://api.sunrise.am/v2/users/authenticate/google/authorize?redirectURI=http://0.0.0.0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "am.sunrise.android.calendar.extra.CACHE_PARANOID"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    const-string v1, "am.sunrise.android.calendar.extra.ALLOW_MAILTO"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    const/16 v1, 0x1092

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 112
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 59
    const/16 v0, 0x1092

    if-ne p1, v0, :cond_0

    .line 60
    packed-switch p2, :pswitch_data_0

    .line 85
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 86
    return-void

    .line 62
    :pswitch_0
    const-string v0, "am.sunrise.android.calendar.extra.ACCESS_TOKEN"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->b:Lam/sunrise/android/calendar/authenticator/ui/p;

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    goto :goto_0

    .line 72
    :pswitch_1
    if-eqz p3, :cond_0

    .line 73
    const-string v0, "am.sunrise.android.calendar.extra.ERROR_MESSAGE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    invoke-interface {v1, v0}, Lam/sunrise/android/calendar/authenticator/ui/k;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    check-cast p1, Lam/sunrise/android/calendar/authenticator/ui/k;

    iput-object p1, p0, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    .line 92
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a()V

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 44
    const v0, 0x7f030058

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->a:Lam/sunrise/android/calendar/authenticator/ui/k;

    .line 98
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f0b00d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/ConnectGoogleFragment;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

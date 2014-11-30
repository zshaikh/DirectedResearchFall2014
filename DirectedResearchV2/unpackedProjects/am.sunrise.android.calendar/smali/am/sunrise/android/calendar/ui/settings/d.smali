.class public Lam/sunrise/android/calendar/ui/settings/d;
.super Lam/sunrise/android/calendar/ui/c;
.source "SettingsAboutFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/c;-><init>()V

    .line 28
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/d;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/settings/SettingsWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const-string v1, "am.sunrise.android.calendar.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v1, "am.sunrise.android.calendar.extra.URL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v1, "am.sunrise.android.calendar.extra.CACHE_PARANOID"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/d;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/d;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/d;->d()V

    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/settings/d;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/d;->e()V

    return-void
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/settings/d;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/d;->f()V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "mailto:support@sunrise.am"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 77
    const-string v1, "android.intent.extra.SUBJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0f0087

    invoke-virtual {p0, v3}, Lam/sunrise/android/calendar/ui/settings/d;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " App"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/d;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/d;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/settings/d;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/d;->g()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f0f0140

    const-string v1, "file:///android_asset/osl.html"

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/settings/d;->a(ILjava/lang/String;)V

    .line 83
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 86
    const v0, 0x7f0f0142

    const-string v1, "http://www.sunrise.am/about/privacy"

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/settings/d;->a(ILjava/lang/String;)V

    .line 87
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 90
    const v0, 0x7f0f0144

    const-string v1, "http://www.sunrise.am/about/terms"

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/settings/d;->a(ILjava/lang/String;)V

    .line 91
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/d;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/d;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/i;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 106
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 107
    const-string v2, " v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v2, " (Build "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/d;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 32
    const v0, 0x7f030062

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 37
    const v0, 0x7f0b00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/ui/settings/e;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/settings/e;-><init>(Lam/sunrise/android/calendar/ui/settings/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f0b00f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/ui/settings/f;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/settings/f;-><init>(Lam/sunrise/android/calendar/ui/settings/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v0, 0x7f0b00f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/ui/settings/g;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/settings/g;-><init>(Lam/sunrise/android/calendar/ui/settings/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f0b00f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/ui/settings/h;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/settings/h;-><init>(Lam/sunrise/android/calendar/ui/settings/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f0b00f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0f0143

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f0087

    invoke-virtual {p0, v5}, Lam/sunrise/android/calendar/ui/settings/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/d;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

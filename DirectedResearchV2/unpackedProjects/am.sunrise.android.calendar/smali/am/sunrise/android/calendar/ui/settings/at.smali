.class public Lam/sunrise/android/calendar/ui/settings/at;
.super Lam/sunrise/android/calendar/ui/c;
.source "SettingsLinkiCloudFragment.java"


# static fields
.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/view/View;

.field private e:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    const-string v1, "UNAUTHORIZED"

    const v2, 0x7f0f0186

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "MOBILEME_TERMS_OF_SERVICE_UPDATE"

    const v2, 0x7f0f00c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sput-object v0, Lam/sunrise/android/calendar/ui/settings/at;->d:Ljava/util/HashMap;

    .line 167
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/c;-><init>()V

    .line 218
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/ay;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/settings/ay;-><init>(Lam/sunrise/android/calendar/ui/settings/at;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/at;->e:Landroid/text/TextWatcher;

    .line 63
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/at;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/at;->e()V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/at;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const v0, 0x7f0f0036

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/at;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 185
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/at;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0, p2}, Lam/sunrise/android/calendar/ui/settings/ba;->a(Landroid/support/v4/app/i;Ljava/lang/String;)V

    .line 186
    return-void

    .line 174
    :cond_1
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/at;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/at;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/at;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 177
    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/settings/at;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/at;->f()V

    return-void
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/settings/at;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/at;->g()V

    return-void
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/settings/at;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/at;->h()V

    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    .line 120
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/az;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/at;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/at;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/at;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/settings/az;-><init>(Lam/sunrise/android/calendar/ui/settings/at;Lam/sunrise/android/calendar/ui/settings/at;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/az;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/at;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/utils/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    const-string v1, "am.sunrise.android.calendar.extra.TITLE"

    const v2, 0x7f0f0115

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string v1, "am.sunrise.android.calendar.extra.ALLOW_MAILTO"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    const-string v1, "am.sunrise.android.calendar.extra.SHOW_UP"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    const-string v1, "am.sunrise.android.calendar.extra.URL"

    const-string v2, "https://www.sunrise.am/about/icloud/security"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/at;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 137
    :try_start_0
    const-string v0, "https://iforgot.apple.com"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 138
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/at;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/at;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/at;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 147
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 149
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/at;->c:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/at;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method d()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/at;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->setResult(I)V

    .line 157
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/at;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    .line 158
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/at;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f0018

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 67
    const v0, 0x7f030065

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 72
    const v0, 0x7f0b00f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/at;->a:Landroid/widget/EditText;

    .line 73
    const v0, 0x7f0b00fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/at;->b:Landroid/widget/EditText;

    .line 75
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/at;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/at;->e:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/at;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/at;->e:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 78
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/at;->b:Landroid/widget/EditText;

    new-instance v1, Lam/sunrise/android/calendar/ui/settings/au;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/settings/au;-><init>(Lam/sunrise/android/calendar/ui/settings/at;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 92
    const v0, 0x7f0b00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/at;->c:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/at;->c:Landroid/view/View;

    new-instance v1, Lam/sunrise/android/calendar/ui/settings/av;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/settings/av;-><init>(Lam/sunrise/android/calendar/ui/settings/at;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f0b00fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/ui/settings/aw;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/settings/aw;-><init>(Lam/sunrise/android/calendar/ui/settings/at;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f0b00fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/ui/settings/ax;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/settings/ax;-><init>(Lam/sunrise/android/calendar/ui/settings/at;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

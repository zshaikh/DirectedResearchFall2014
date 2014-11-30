.class public Lam/sunrise/android/calendar/ui/birthdays/i;
.super Lam/sunrise/android/calendar/ui/c;
.source "BirthdaysFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/birthdays/e;
.implements Lam/sunrise/android/calendar/ui/settings/e/b;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/settings/e/a;

.field private b:Lam/sunrise/android/calendar/ui/birthdays/m;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/ListView;

.field private e:Lam/sunrise/android/calendar/ui/birthdays/a;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/c;-><init>()V

    .line 54
    new-instance v0, Lam/sunrise/android/calendar/ui/birthdays/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/birthdays/m;-><init>(Lam/sunrise/android/calendar/ui/birthdays/i;Lam/sunrise/android/calendar/ui/birthdays/j;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->b:Lam/sunrise/android/calendar/ui/birthdays/m;

    .line 64
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/birthdays/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/birthdays/i;Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/birthdays/i;->b(Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/birthdays/i;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/birthdays/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lam/sunrise/android/calendar/ui/birthdays/l;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/birthdays/i;)Lam/sunrise/android/calendar/ui/birthdays/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->e:Lam/sunrise/android/calendar/ui/birthdays/a;

    return-object v0
.end method

.method private b(Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 245
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/birthdays/i;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/e/a;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lam/sunrise/android/calendar/ui/settings/e/a;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->a:Lam/sunrise/android/calendar/ui/settings/e/a;

    .line 248
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->a:Lam/sunrise/android/calendar/ui/settings/e/a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/e/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 250
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 206
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 207
    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 212
    const-string v2, "ref"

    const-string v3, "birthday"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v2, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    invoke-virtual {v2, p1}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->setTo(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 177
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lam/sunrise/android/calendar/ui/birthdays/j;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/birthdays/j;-><init>(Lam/sunrise/android/calendar/ui/birthdays/i;)V

    invoke-static {v0, p0, v1, v2}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    .line 203
    return-void
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->a:Lam/sunrise/android/calendar/ui/settings/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->a:Lam/sunrise/android/calendar/ui/settings/e/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/e/a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/birthdays/d;)V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 134
    if-nez v0, :cond_0

    .line 135
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/birthdays/d;->e:Ljava/lang/String;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->f:Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/birthdays/i;->d()V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/birthdays/d;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/birthdays/i;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lam/sunrise/android/calendar/ui/settings/e/c;)V
    .locals 5

    .prologue
    .line 221
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    const v1, 0x7f0f008f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0f0014

    invoke-virtual {p0, v4}, Lam/sunrise/android/calendar/ui/birthdays/i;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lam/sunrise/android/calendar/ui/birthdays/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public a(Lam/sunrise/android/calendar/ui/settings/e/c;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;)V

    .line 237
    const v0, 0x7f0f0014

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/birthdays/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lam/sunrise/android/calendar/ui/birthdays/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public b(Lam/sunrise/android/calendar/ui/birthdays/d;)V
    .locals 5

    .prologue
    .line 144
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v0, v2, :cond_1

    .line 147
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v2, "android.intent.extra.TEXT"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    :cond_0
    :goto_0
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/birthdays/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/birthdays/d;->f:Ljava/lang/String;

    .line 173
    :goto_1
    const v2, 0x7f0f0185

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lam/sunrise/android/calendar/ui/birthdays/i;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/birthdays/i;->startActivity(Landroid/content/Intent;)V

    .line 174
    return-void

    .line 157
    :cond_1
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v0, "sms:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 159
    const-string v0, "sms_body"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/birthdays/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/birthdays/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public b(Lam/sunrise/android/calendar/ui/settings/e/c;)V
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;)V

    .line 228
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/birthdays/i;->b(Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->f:Ljava/lang/String;

    .line 232
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 97
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/i;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->b:Lam/sunrise/android/calendar/ui/birthdays/m;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 99
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/i;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v0, 0x1a

    invoke-static {v2, v3, v4, v0}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lam/sunrise/android/calendar/ui/c;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onCreate(Landroid/os/Bundle;)V

    .line 69
    if-eqz p1, :cond_0

    .line 70
    const-string v0, "saved_birthdays_date"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->c:Ljava/lang/String;

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.BIRTHDAYS_DATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 84
    const v0, 0x7f030053

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 119
    const v0, 0x7f0b0016

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/birthdays/f;

    .line 120
    if-eqz v0, :cond_0

    iget-object v1, v0, Lam/sunrise/android/calendar/ui/birthdays/f;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fb://profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/birthdays/f;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/birthdays/i;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v1

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.facebook.com/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/birthdays/f;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/birthdays/i;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    const-string v0, "saved_birthdays_date"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 89
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->d:Landroid/widget/ListView;

    .line 90
    new-instance v0, Lam/sunrise/android/calendar/ui/birthdays/a;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lam/sunrise/android/calendar/ui/birthdays/a;-><init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/birthdays/e;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->e:Lam/sunrise/android/calendar/ui/birthdays/a;

    .line 91
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->e:Lam/sunrise/android/calendar/ui/birthdays/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/i;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    return-void
.end method

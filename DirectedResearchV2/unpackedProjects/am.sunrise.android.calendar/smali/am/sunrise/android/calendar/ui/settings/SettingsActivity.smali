.class public Lam/sunrise/android/calendar/ui/settings/SettingsActivity;
.super Lam/sunrise/android/calendar/ui/settings/b;
.source "SettingsActivity.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/a/c;
.implements Lam/sunrise/android/calendar/ui/a/f;
.implements Lam/sunrise/android/calendar/ui/settings/e/g;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final a:[Lam/sunrise/android/calendar/ui/settings/b/c;

.field private static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lam/sunrise/android/calendar/ui/settings/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lam/sunrise/android/calendar/ui/a/b;

.field private c:Ljava/lang/String;

.field private d:Lam/sunrise/android/calendar/ui/settings/t;

.field private e:Lam/sunrise/android/calendar/ui/settings/e/f;

.field private f:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

.field private g:Lam/sunrise/android/calendar/ui/settings/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    const v1, 0x7f0f013d

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/settings/b/c;->a(I)Lam/sunrise/android/calendar/ui/settings/b/c;

    move-result-object v1

    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/b/f;->a()Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    const v3, 0x7f0f0157

    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/ui/settings/b/f;->b(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    const-class v3, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;

    const-string v4, "am.sunrise.android.calendar.ui.settings.action.VISIBLE_CALENDARS"

    invoke-virtual {v2, v3, v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Ljava/lang/Class;Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/settings/b/c;->a(Lam/sunrise/android/calendar/ui/settings/b/f;)Lam/sunrise/android/calendar/ui/settings/b/c;

    move-result-object v1

    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/b/f;->a()Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    const v3, 0x7f0f0150

    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/ui/settings/b/f;->b(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    const-class v3, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;

    const-string v4, "am.sunrise.android.calendar.ui.settings.action.NOTIFICATIONS"

    invoke-virtual {v2, v3, v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Ljava/lang/Class;Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/settings/b/c;->a(Lam/sunrise/android/calendar/ui/settings/b/f;)Lam/sunrise/android/calendar/ui/settings/b/c;

    move-result-object v1

    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/b/f;->a()Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    const v3, 0x7f0f0151

    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/ui/settings/b/f;->b(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    const-class v3, Lam/sunrise/android/calendar/ui/settings/SettingsPreferencesActivity;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Ljava/lang/Class;Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/settings/b/c;->a(Lam/sunrise/android/calendar/ui/settings/b/f;)Lam/sunrise/android/calendar/ui/settings/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    const v1, 0x7f0f0145

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/settings/b/c;->a(I)Lam/sunrise/android/calendar/ui/settings/b/c;

    move-result-object v1

    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/b/f;->a()Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    const v3, 0x7f020180

    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    const v3, 0x7f0f0146

    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/ui/settings/b/f;->b(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    const-class v3, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;

    const-string v4, "am.sunrise.android.calendar.ui.settings.action.ADD_ACCOUNT"

    invoke-virtual {v2, v3, v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Ljava/lang/Class;Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/settings/b/c;->a(Lam/sunrise/android/calendar/ui/settings/b/f;)Lam/sunrise/android/calendar/ui/settings/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const v1, 0x7f0f014f

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/settings/b/c;->a(I)Lam/sunrise/android/calendar/ui/settings/b/c;

    move-result-object v1

    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/b/f;->a()Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    const v3, 0x7f0f013e

    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/ui/settings/b/f;->b(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    const-class v3, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;

    const-string v4, "am.sunrise.android.calendar.ui.settings.action.ABOUT"

    invoke-virtual {v2, v3, v4}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Ljava/lang/Class;Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/settings/b/c;->a(Lam/sunrise/android/calendar/ui/settings/b/f;)Lam/sunrise/android/calendar/ui/settings/b/c;

    move-result-object v1

    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/b/f;->a()Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    const v3, 0x7f0f0154

    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/ui/settings/b/f;->b(I)Lam/sunrise/android/calendar/ui/settings/b/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/settings/b/c;->a(Lam/sunrise/android/calendar/ui/settings/b/f;)Lam/sunrise/android/calendar/ui/settings/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lam/sunrise/android/calendar/ui/settings/b/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/ui/settings/b/c;

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->a:[Lam/sunrise/android/calendar/ui/settings/b/c;

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->h:Ljava/util/HashMap;

    .line 242
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->h:Ljava/util/HashMap;

    const-string v1, "asana"

    new-instance v2, Lam/sunrise/android/calendar/ui/settings/s;

    const v3, 0x7f020181

    const v4, 0x7f0f0037

    invoke-direct {v2, v3, v4}, Lam/sunrise/android/calendar/ui/settings/s;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->h:Ljava/util/HashMap;

    const-string v1, "evernote"

    new-instance v2, Lam/sunrise/android/calendar/ui/settings/s;

    const v3, 0x7f020182

    const v4, 0x7f0f00ba

    invoke-direct {v2, v3, v4}, Lam/sunrise/android/calendar/ui/settings/s;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->h:Ljava/util/HashMap;

    const-string v1, "facebook"

    new-instance v2, Lam/sunrise/android/calendar/ui/settings/s;

    const v3, 0x7f020183

    const v4, 0x7f0f00c1

    invoke-direct {v2, v3, v4}, Lam/sunrise/android/calendar/ui/settings/s;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->h:Ljava/util/HashMap;

    const-string v1, "foursquare"

    new-instance v2, Lam/sunrise/android/calendar/ui/settings/s;

    const v3, 0x7f020184

    const v4, 0x7f0f00c4

    invoke-direct {v2, v3, v4}, Lam/sunrise/android/calendar/ui/settings/s;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->h:Ljava/util/HashMap;

    const-string v1, "github"

    new-instance v2, Lam/sunrise/android/calendar/ui/settings/s;

    const v3, 0x7f020185

    const v4, 0x7f0f00c6

    invoke-direct {v2, v3, v4}, Lam/sunrise/android/calendar/ui/settings/s;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->h:Ljava/util/HashMap;

    const-string v1, "google"

    new-instance v2, Lam/sunrise/android/calendar/ui/settings/s;

    const v3, 0x7f020186

    const v4, 0x7f0f00c7

    invoke-direct {v2, v3, v4}, Lam/sunrise/android/calendar/ui/settings/s;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->h:Ljava/util/HashMap;

    const-string v1, "icloud"

    new-instance v2, Lam/sunrise/android/calendar/ui/settings/s;

    const v3, 0x7f020187

    const v4, 0x7f0f00d3

    invoke-direct {v2, v3, v4}, Lam/sunrise/android/calendar/ui/settings/s;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->h:Ljava/util/HashMap;

    const-string v1, "linkedin"

    new-instance v2, Lam/sunrise/android/calendar/ui/settings/s;

    const v3, 0x7f020188

    const v4, 0x7f0f00db

    invoke-direct {v2, v3, v4}, Lam/sunrise/android/calendar/ui/settings/s;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->h:Ljava/util/HashMap;

    const-string v1, "producteev"

    new-instance v2, Lam/sunrise/android/calendar/ui/settings/s;

    const v3, 0x7f020189

    const v4, 0x7f0f0119

    invoke-direct {v2, v3, v4}, Lam/sunrise/android/calendar/ui/settings/s;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->h:Ljava/util/HashMap;

    const-string v1, "songkick"

    new-instance v2, Lam/sunrise/android/calendar/ui/settings/s;

    const v3, 0x7f02018a

    const v4, 0x7f0f016b

    invoke-direct {v2, v3, v4}, Lam/sunrise/android/calendar/ui/settings/s;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->h:Ljava/util/HashMap;

    const-string v1, "twitter"

    new-instance v2, Lam/sunrise/android/calendar/ui/settings/s;

    const v3, 0x7f02018b

    const v4, 0x7f0f0178

    invoke-direct {v2, v3, v4}, Lam/sunrise/android/calendar/ui/settings/s;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/b;-><init>()V

    .line 90
    new-instance v0, Lam/sunrise/android/calendar/ui/a/b;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/a/b;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->b:Lam/sunrise/android/calendar/ui/a/b;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->d:Lam/sunrise/android/calendar/ui/settings/t;

    .line 395
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/SettingsActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static a(Landroid/support/v4/app/i;)V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    const-string v1, "am.sunrise.android.calendar.ui.settings.action.ADD_ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Landroid/support/v4/app/i;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/settings/b/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->g:Lam/sunrise/android/calendar/ui/settings/b/b;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/b;->a()[Lam/sunrise/android/calendar/ui/settings/b/c;

    move-result-object v2

    .line 268
    invoke-static {v2}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 270
    aget-object v3, v2, v1

    .line 271
    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/settings/b/c;->a()I

    move-result v0

    const v4, 0x7f0f0145

    if-ne v0, v4, :cond_0

    .line 272
    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/settings/b/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/b/f;

    .line 274
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {v3, p1}, Lam/sunrise/android/calendar/ui/settings/b/c;->a(Ljava/util/ArrayList;)Lam/sunrise/android/calendar/ui/settings/b/c;

    .line 269
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->g:Lam/sunrise/android/calendar/ui/settings/b/b;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/settings/b/b;->a([Lam/sunrise/android/calendar/ui/settings/b/c;)V

    .line 281
    return-void
.end method

.method static synthetic g()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method private h()V
    .locals 0

    .prologue
    .line 181
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/settings/v;->a(Landroid/support/v4/app/i;)V

    .line 182
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 200
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/e/f;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/settings/e/f;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->e:Lam/sunrise/android/calendar/ui/settings/e/f;

    .line 202
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->e:Lam/sunrise/android/calendar/ui/settings/e/f;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/e/f;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 204
    :cond_0
    return-void
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->e:Lam/sunrise/android/calendar/ui/settings/e/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->e:Lam/sunrise/android/calendar/ui/settings/e/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/e/f;->getStatus()Landroid/os/AsyncTask$Status;

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

.method private k()V
    .locals 3

    .prologue
    .line 284
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/t;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/settings/t;-><init>(Lam/sunrise/android/calendar/ui/settings/SettingsActivity;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->d:Lam/sunrise/android/calendar/ui/settings/t;

    .line 288
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->d:Lam/sunrise/android/calendar/ui/settings/t;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/t;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 292
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->d:Lam/sunrise/android/calendar/ui/settings/t;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/settings/t;->cancel(Z)Z

    .line 295
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->d:Lam/sunrise/android/calendar/ui/settings/t;

    .line 296
    return-void
.end method

.method private m()Z
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->d:Lam/sunrise/android/calendar/ui/settings/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->d:Lam/sunrise/android/calendar/ui/settings/t;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/t;->getStatus()Landroid/os/AsyncTask$Status;

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
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->c:Ljava/lang/String;

    .line 225
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->i()V

    .line 226
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->k()V

    .line 197
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->c:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 186
    const v0, 0x7f0f0168

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 191
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;)V

    .line 192
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 109
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/settings/b;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 115
    :cond_0
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->setContentView(I)V

    .line 117
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 119
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->f:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .line 120
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->f:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v5}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 122
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->f:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 128
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->f:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 130
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/b/b;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/settings/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->g:Lam/sunrise/android/calendar/ui/settings/b/b;

    .line 131
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->g:Lam/sunrise/android/calendar/ui/settings/b/b;

    sget-object v1, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->a:[Lam/sunrise/android/calendar/ui/settings/b/c;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/settings/b/b;->a([Lam/sunrise/android/calendar/ui/settings/b/c;)V

    .line 132
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->f:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->g:Lam/sunrise/android/calendar/ui/settings/b/b;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/i;)V

    .line 134
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->f:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/settings/b;->onDestroy()V

    .line 140
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->b:Lam/sunrise/android/calendar/ui/a/b;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/a/b;->b()V

    .line 141
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 158
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->g:Lam/sunrise/android/calendar/ui/settings/b/b;

    invoke-virtual {v0, p3}, Lam/sunrise/android/calendar/ui/settings/b/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/b/f;

    .line 159
    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/settings/b/f;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 165
    :pswitch_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->h()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x7f0f0154
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/settings/b;->onPause()V

    .line 153
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->l()V

    .line 154
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/settings/b;->onResume()V

    .line 146
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->b:Lam/sunrise/android/calendar/ui/a/b;

    invoke-virtual {v0, p0, p0}, Lam/sunrise/android/calendar/ui/a/b;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/a/c;)V

    .line 147
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->k()V

    .line 148
    return-void
.end method

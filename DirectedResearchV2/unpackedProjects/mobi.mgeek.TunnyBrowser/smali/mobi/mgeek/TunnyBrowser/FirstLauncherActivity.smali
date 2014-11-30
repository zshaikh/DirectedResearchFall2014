.class public Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;
.super Landroid/app/ActivityGroup;
.source "FirstLauncherActivity.java"


# instance fields
.field private a:Lcom/mgeek/android/util/e;

.field private b:Landroid/view/ViewGroup;

.field private c:Lmobi/mgeek/TunnyBrowser/fd;

.field private d:Landroid/os/Handler;

.field private e:Lcom/dolphin/browser/preload/m;

.field private f:Z

.field private g:Ljava/lang/Runnable;

.field private h:Z

.field private i:Z

.field private j:Lcom/dolphin/browser/preload/ui/PreloadingView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 57
    new-instance v0, Lmobi/mgeek/TunnyBrowser/fb;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/fb;-><init>(Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->g:Ljava/lang/Runnable;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->h:Z

    .line 317
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;Lcom/dolphin/browser/preload/ui/PreloadingView;)Lcom/dolphin/browser/preload/ui/PreloadingView;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->j:Lcom/dolphin/browser/preload/ui/PreloadingView;

    return-object p1
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;)Lcom/mgeek/android/util/e;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->a:Lcom/mgeek/android/util/e;

    return-object v0
.end method

.method private a(Lmobi/mgeek/TunnyBrowser/fd;)V
    .locals 2

    .prologue
    .line 259
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->c:Lmobi/mgeek/TunnyBrowser/fd;

    .line 260
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 261
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Lmobi/mgeek/TunnyBrowser/fd;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->i:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "MIUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {p0}, Lmobi/mgeek/TunnyBrowser/Browser;->e(Landroid/content/Context;)V

    .line 134
    :cond_0
    return-void
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->e()V

    return-void
.end method

.method private c()Z
    .locals 3

    .prologue
    .line 137
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    const-string v1, "trackInstallReferrer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 142
    new-instance v0, Lmobi/mgeek/TunnyBrowser/fc;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/fc;-><init>(Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 152
    new-instance v0, Lcom/mgeek/android/util/e;

    invoke-direct {v0}, Lcom/mgeek/android/util/e;-><init>()V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->a:Lcom/mgeek/android/util/e;

    .line 153
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->d:Landroid/os/Handler;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->e:Lcom/dolphin/browser/preload/m;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->a:Lcom/mgeek/android/util/e;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->e:Lcom/dolphin/browser/preload/m;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/preload/m;->a(Z)Lcom/mgeek/android/util/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgeek/android/util/e;->a(Lcom/mgeek/android/util/h;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->a:Lcom/mgeek/android/util/e;

    invoke-static {}, Lcom/dolphin/browser/ui/launcher/a/d;->a()Lcom/dolphin/browser/ui/launcher/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/launcher/a/d;->f()Lcom/dolphin/browser/ui/launcher/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgeek/android/util/e;->a(Lcom/mgeek/android/util/h;)V

    .line 159
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->a:Lcom/mgeek/android/util/e;

    invoke-virtual {v0}, Lcom/mgeek/android/util/e;->a()V

    .line 160
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->e:Lcom/dolphin/browser/preload/m;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->i:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dolphin/browser/ui/launcher/a/d;->a()Lcom/dolphin/browser/ui/launcher/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->f()V

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->f()V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->h:Z

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->h:Z

    .line 179
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->g()V

    .line 181
    :cond_0
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-static {}, Lcom/dolphin/browser/preload/o;->a()V

    .line 187
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    .line 188
    iget-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->f:Z

    if-eqz v1, :cond_4

    .line 192
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->b()V

    .line 193
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->C()V

    .line 194
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->t()V

    .line 209
    :cond_0
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v1

    const-string v2, "showHomepage"

    invoke-virtual {v1, v2, v4}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {v0, p0, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c(Landroid/content/Context;Z)V

    .line 213
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    const-string v2, "featureLink"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 218
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 222
    :cond_2
    const-string v0, "com.android.browser.application_id"

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v0, "new_tab"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "pending_intent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 229
    const-string v2, "pending_intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->j:Lcom/dolphin/browser/preload/ui/PreloadingView;

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->j:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->e()V

    .line 235
    :cond_3
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->finish()V

    .line 236
    const-string v0, "FirstLauncherActivity"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v0, "App Start(First Start), from click start button to exit FirstLaunchActivity"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 239
    const-string v2, "launch"

    const-string v3, "wait_for_data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v2, v3, v0, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 241
    const-string v0, "App Start(First Start), stage one: from enter FirstLaunchActivity to exit FirstLaunchActivity"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;)J

    .line 243
    invoke-static {}, Lcom/dolphin/browser/util/ae;->c()V

    .line 244
    return-void

    .line 198
    :cond_4
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j()I

    move-result v1

    const/16 v2, 0xde

    if-ge v1, v2, :cond_0

    .line 199
    invoke-static {}, Lcom/dolphin/browser/mostvisit/b;->a()Lcom/dolphin/browser/mostvisit/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/mostvisit/b;->b()V

    .line 205
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/a/d;->a()Lcom/dolphin/browser/ui/launcher/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/launcher/a/d;->h()V

    goto/16 :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->c:Lmobi/mgeek/TunnyBrowser/fd;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/fd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->e()V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->c:Lmobi/mgeek/TunnyBrowser/fd;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/fd;->a()Lmobi/mgeek/TunnyBrowser/fd;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->a(Lmobi/mgeek/TunnyBrowser/fd;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget-object v0, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v0, 0x7f040004

    sget-object v3, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v3, 0x7f040005

    invoke-virtual {p0, v0, v3}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->overridePendingTransition(II)V

    .line 71
    const-string v0, "FirstLauncherActivity"

    const-string v3, "onCreate"

    invoke-static {v0, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03007f

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->setContentView(I)V

    .line 74
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08022d

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->b:Landroid/view/ViewGroup;

    .line 75
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->e:Lcom/dolphin/browser/preload/m;

    .line 76
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "first_launcher_mode"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 78
    if-ne v0, v4, :cond_0

    move v0, v1

    .line 79
    :goto_0
    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->f:Z

    .line 81
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->d:Landroid/os/Handler;

    .line 82
    new-instance v3, Lmobi/mgeek/TunnyBrowser/fe;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lmobi/mgeek/TunnyBrowser/fe;-><init>(Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;Lmobi/mgeek/TunnyBrowser/fb;)V

    .line 83
    iput-object v3, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->c:Lmobi/mgeek/TunnyBrowser/fd;

    .line 84
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Lmobi/mgeek/TunnyBrowser/fd;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/dolphin/browser/preload/n;

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dolphin/browser/preload/n;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/n;->b(Z)V

    .line 127
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 78
    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/analytics/e;->e()Lcom/dolphin/browser/analytics/e;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Lcom/dolphin/browser/analytics/e;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    invoke-static {}, Lcom/dolphin/browser/analytics/a;->a()Lcom/dolphin/browser/analytics/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/analytics/a;->d()V

    .line 100
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/analytics/a;->b()V

    .line 103
    :cond_3
    if-eqz v0, :cond_4

    .line 106
    invoke-static {}, Lcom/dolphin/browser/v/e;->b()V

    .line 109
    :cond_4
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->d()V

    .line 111
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->e:Lcom/dolphin/browser/preload/m;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->n()Z

    move-result v0

    .line 113
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->e:Lcom/dolphin/browser/preload/m;

    invoke-virtual {v3}, Lcom/dolphin/browser/preload/m;->o()Z

    move-result v3

    .line 116
    const-string v4, "A"

    invoke-static {v4, v0}, Lcom/dolphin/browser/preload/o;->a(Ljava/lang/String;Z)V

    .line 119
    if-eqz v3, :cond_5

    .line 120
    const-string v0, "E"

    invoke-static {v0, v1}, Lcom/dolphin/browser/preload/o;->a(Ljava/lang/String;Z)V

    .line 124
    :cond_5
    invoke-static {}, Lcom/dolphin/browser/util/dk;->a()Lcom/dolphin/browser/util/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/dk;->b()V

    .line 125
    invoke-static {}, Lcom/dolphin/browser/util/dk;->a()Lcom/dolphin/browser/util/dk;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/util/dk;->a(Z)V

    .line 126
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/dr;->a(Landroid/view/Window;)V

    goto :goto_1
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

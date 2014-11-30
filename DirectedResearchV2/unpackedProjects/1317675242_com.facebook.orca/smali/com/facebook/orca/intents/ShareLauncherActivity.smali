.class public Lcom/facebook/orca/intents/ShareLauncherActivity;
.super Lcom/facebook/orca/activity/OrcaActivity;
.source "ShareLauncherActivity.java"


# instance fields
.field private b:Lcom/facebook/orca/threadlist/ThreadChooserDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/intents/ShareLauncherActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/facebook/orca/intents/ShareLauncherActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/facebook/orca/intents/ShareLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    invoke-direct {p0, v0}, Lcom/facebook/orca/intents/ShareLauncherActivity;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 52
    sget-object v2, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a:Ljava/lang/String;

    if-ne p1, v2, :cond_2

    .line 53
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    :goto_0
    const-string v3, "for_sharing"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    if-eqz v1, :cond_0

    .line 62
    const-string v3, "share_text"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    :cond_0
    if-eqz v0, :cond_1

    .line 65
    const-string v1, "share_photo_uri"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/orca/intents/ShareLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Lcom/facebook/orca/intents/ShareLauncherActivity;->finish()V

    .line 69
    return-void

    .line 54
    :cond_2
    if-nez p1, :cond_3

    .line 55
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 57
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    const-string v3, "thread_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaActivity;->a(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/ShareLauncherActivity;->setContentView(I)V

    .line 27
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaActivity;->b(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/facebook/orca/intents/ShareLauncherActivity;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    .line 33
    const-class v1, Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    iput-object v0, p0, Lcom/facebook/orca/intents/ShareLauncherActivity;->b:Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    .line 35
    iget-object v0, p0, Lcom/facebook/orca/intents/ShareLauncherActivity;->b:Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    const v1, 0x7f0a0111

    invoke-virtual {p0, v1}, Lcom/facebook/orca/intents/ShareLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/facebook/orca/intents/ShareLauncherActivity;->b:Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    const v1, 0x7f0a0112

    invoke-virtual {p0, v1}, Lcom/facebook/orca/intents/ShareLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->b(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/facebook/orca/intents/ShareLauncherActivity;->b:Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    new-instance v1, Lcom/facebook/orca/intents/ShareLauncherActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/intents/ShareLauncherActivity$1;-><init>(Lcom/facebook/orca/intents/ShareLauncherActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->a(Lcom/facebook/orca/threadlist/ThreadChooserDialog$OnDialogFinishedListener;)V

    .line 43
    iget-object v0, p0, Lcom/facebook/orca/intents/ShareLauncherActivity;->b:Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadChooserDialog;->show()V

    .line 44
    return-void
.end method

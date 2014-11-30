.class public Lcom/appoxee/activities/AppoxeeExampleActivity;
.super Landroid/app/Activity;
.source "AppoxeeExampleActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appoxee/activities/AppoxeeExampleActivity$initializingAsync;
    }
.end annotation


# static fields
.field private static builder:Landroid/app/AlertDialog$Builder;

.field private static enabled:Z

.field private static mFREContext:Lcom/adobe/fre/FREContext;


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private dialog:Landroid/app/AlertDialog;

.field redBadgeImageView:Landroid/widget/ImageView;

.field redBadgeTxt:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/appoxee/activities/AppoxeeExampleActivity;->enabled:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/appoxee/activities/AppoxeeExampleActivity;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/appoxee/activities/AppoxeeExampleActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, -0x1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget-boolean v7, Lcom/appoxee/activities/AppoxeeExampleActivity;->enabled:Z

    if-nez v7, :cond_0

    .line 40
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/appoxee/activities/AppoxeeExampleActivity;->builder:Landroid/app/AlertDialog$Builder;

    .line 41
    const/4 v7, 0x1

    sput-boolean v7, Lcom/appoxee/activities/AppoxeeExampleActivity;->enabled:Z

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/appoxee/activities/AppoxeeExampleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sput-object v7, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    .line 45
    new-instance v7, Lcom/appoxee/asyncs/Setup;

    invoke-direct {v7}, Lcom/appoxee/asyncs/Setup;-><init>()V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lcom/appoxee/asyncs/Setup;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    invoke-virtual {p0}, Lcom/appoxee/activities/AppoxeeExampleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "layoutID"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 47
    .local v2, "layoutID":I
    invoke-virtual {p0, v2}, Lcom/appoxee/activities/AppoxeeExampleActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/appoxee/activities/AppoxeeExampleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "openInbox"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 50
    .local v3, "openInbox":I
    invoke-virtual {p0, v3}, Lcom/appoxee/activities/AppoxeeExampleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 52
    .local v4, "openInboxBtn":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/appoxee/activities/AppoxeeExampleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "redBadgeTextView"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 53
    .local v6, "redBadgeTextView":I
    invoke-virtual {p0}, Lcom/appoxee/activities/AppoxeeExampleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "redBadgeImage"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 55
    .local v5, "redBadgeImage":I
    invoke-virtual {p0, v5}, Lcom/appoxee/activities/AppoxeeExampleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/appoxee/activities/AppoxeeExampleActivity;->redBadgeImageView:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p0, v6}, Lcom/appoxee/activities/AppoxeeExampleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/appoxee/activities/AppoxeeExampleActivity;->redBadgeTxt:Landroid/widget/TextView;

    .line 58
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/appoxee/activities/AppoxeeExampleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/appoxee/activities/Inbox;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v7, 0x4000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v1}, Lcom/appoxee/activities/AppoxeeExampleActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 64
    .local v0, "handler":Landroid/os/Handler;
    new-instance v7, Lcom/appoxee/activities/AppoxeeExampleActivity$1;

    invoke-direct {v7, p0, v0}, Lcom/appoxee/activities/AppoxeeExampleActivity$1;-><init>(Lcom/appoxee/activities/AppoxeeExampleActivity;Landroid/os/Handler;)V

    .line 71
    const-wide/16 v8, 0x1388

    .line 64
    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    new-instance v7, Lcom/appoxee/activities/AppoxeeExampleActivity$2;

    invoke-direct {v7, p0}, Lcom/appoxee/activities/AppoxeeExampleActivity$2;-><init>(Lcom/appoxee/activities/AppoxeeExampleActivity;)V

    iput-object v7, p0, Lcom/appoxee/activities/AppoxeeExampleActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 132
    iget-object v0, p0, Lcom/appoxee/activities/AppoxeeExampleActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/appoxee/activities/AppoxeeExampleActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    invoke-static {}, Lcom/appoxee/Appoxee;->onStop()V

    .line 135
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/appoxee/activities/AppoxeeExampleActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "APPOXEE_INBOX_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/appoxee/activities/AppoxeeExampleActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Lcom/appoxee/activities/AppoxeeExampleActivity;->updateMsgBadge()V

    .line 126
    return-void
.end method

.method public updateMsgBadge()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 91
    invoke-static {}, Lcom/appoxee/Appoxee;->getUnreadMessages()I

    move-result v0

    .line 96
    .local v0, "unreadMsgs":I
    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/appoxee/activities/AppoxeeExampleActivity;->redBadgeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/appoxee/activities/AppoxeeExampleActivity;->redBadgeTxt:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/appoxee/activities/AppoxeeExampleActivity;->redBadgeTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/appoxee/activities/AppoxeeExampleActivity;->redBadgeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/appoxee/activities/AppoxeeExampleActivity;->redBadgeTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

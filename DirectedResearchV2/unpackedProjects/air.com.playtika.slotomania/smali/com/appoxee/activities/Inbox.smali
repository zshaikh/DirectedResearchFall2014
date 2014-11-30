.class public Lcom/appoxee/activities/Inbox;
.super Landroid/support/v4/app/FragmentActivity;
.source "Inbox.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appoxee/activities/Inbox$GetDataTask;,
        Lcom/appoxee/activities/Inbox$InboxCursorAdapter;,
        Lcom/appoxee/activities/Inbox$InboxCursorLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final MENU_LOGS:I = 0x1

.field public static final MENU_TAGS:I = 0x2

.field private static builder:Landroid/app/AlertDialog$Builder;


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field deleteButton:Landroid/widget/Button;

.field private dialog:Landroid/app/AlertDialog;

.field private loaderBroadcast:Landroid/content/BroadcastReceiver;

.field private logsBuilder:Landroid/app/AlertDialog$Builder;

.field private logsDialog:Landroid/app/AlertDialog;

.field private mAdapter:Lcom/appoxee/activities/Inbox$InboxCursorAdapter;

.field private mOpenedFromNotification:Z

.field private mPullRefreshListView:Lcom/appoxee/widgets/PullToRefreshListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appoxee/activities/Inbox;->mOpenedFromNotification:Z

    .line 524
    new-instance v0, Lcom/appoxee/activities/Inbox$1;

    invoke-direct {v0, p0}, Lcom/appoxee/activities/Inbox$1;-><init>(Lcom/appoxee/activities/Inbox;)V

    iput-object v0, p0, Lcom/appoxee/activities/Inbox;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 535
    new-instance v0, Lcom/appoxee/activities/Inbox$2;

    invoke-direct {v0, p0}, Lcom/appoxee/activities/Inbox$2;-><init>(Lcom/appoxee/activities/Inbox;)V

    iput-object v0, p0, Lcom/appoxee/activities/Inbox;->loaderBroadcast:Landroid/content/BroadcastReceiver;

    .line 60
    return-void
.end method

.method static synthetic access$1()Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/appoxee/activities/Inbox;->builder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$2(Lcom/appoxee/activities/Inbox;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/appoxee/activities/Inbox;->dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$3(Lcom/appoxee/activities/Inbox;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/appoxee/activities/Inbox;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/appoxee/activities/Inbox;)Lcom/appoxee/activities/Inbox$InboxCursorAdapter;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/appoxee/activities/Inbox;->mAdapter:Lcom/appoxee/activities/Inbox$InboxCursorAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/appoxee/activities/Inbox;)Lcom/appoxee/widgets/PullToRefreshListView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/appoxee/activities/Inbox;->mPullRefreshListView:Lcom/appoxee/widgets/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/appoxee/activities/Inbox;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Lcom/appoxee/activities/Inbox;->showDeleteButton(Landroid/view/View;I)V

    return-void
.end method

.method private setButtons(Landroid/widget/RelativeLayout;)V
    .locals 4
    .param p1, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    const/4 v3, 0x0

    .line 258
    const-string v2, "inbox_buttons"

    invoke-static {v2}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 259
    .local v0, "buttons":Landroid/widget/RelativeLayout;
    const-string v2, "separator"

    invoke-static {v2}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 260
    .local v1, "separator":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 261
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isFeedbackEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isMoreAppsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 267
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isFeedbackEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isMoreAppsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 270
    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/appoxee/activities/Inbox;->setFeedbackButton(Landroid/widget/RelativeLayout;)V

    .line 280
    invoke-direct {p0, p1}, Lcom/appoxee/activities/Inbox;->setMoreAppsButton(Landroid/widget/RelativeLayout;)V

    .line 281
    return-void

    .line 275
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setFeedbackButton(Landroid/widget/RelativeLayout;)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 285
    const-string v1, "feedback_button"

    invoke-static {v1}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "feedbackButton":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 290
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    new-instance v1, Lcom/appoxee/activities/Inbox$7;

    invoke-direct {v1, p0}, Lcom/appoxee/activities/Inbox$7;-><init>(Lcom/appoxee/activities/Inbox;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setInboxTitle(Landroid/widget/RelativeLayout;)V
    .locals 3
    .param p1, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 246
    const-string v2, "inbox_title"

    invoke-static {v2}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 248
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 249
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getInboxTitle()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "title":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    if-eq v0, v2, :cond_0

    .line 252
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setMoreAppsButton(Landroid/widget/RelativeLayout;)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 306
    const-string v1, "moreapps_button"

    invoke-static {v1}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, "moreAppsButton":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isMoreAppsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    new-instance v1, Lcom/appoxee/activities/Inbox$8;

    invoke-direct {v1, p0}, Lcom/appoxee/activities/Inbox$8;-><init>(Lcom/appoxee/activities/Inbox;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showDeleteButton(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 218
    const-string v0, "delete_button"

    invoke-static {v0}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/appoxee/activities/Inbox;->deleteButton:Landroid/widget/Button;

    .line 220
    iget-object v0, p0, Lcom/appoxee/activities/Inbox;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/appoxee/activities/Inbox;->deleteButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/appoxee/activities/Inbox;->deleteButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/appoxee/activities/Inbox;->deleteButton:Landroid/widget/Button;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public close(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v5, "Inbox: closing, openedFromNotification is  "

    .line 581
    sget-boolean v3, Lcom/appoxee/AppoxeeManager;->isAirVersion:Z

    if-eqz v3, :cond_0

    .line 582
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inbox: closing, openedFromNotification is  "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/appoxee/activities/Inbox;->mOpenedFromNotification:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 583
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 584
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/appoxee/activities/Inbox;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 585
    .local v2, "manager":Landroid/content/pm/PackageManager;
    const-string v3, "air.AppoxeeANEDemo"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 586
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    invoke-virtual {p0, v1}, Lcom/appoxee/activities/Inbox;->startActivity(Landroid/content/Intent;)V

    .line 588
    invoke-virtual {p0}, Lcom/appoxee/activities/Inbox;->finish()V

    .line 599
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 590
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inbox: closing, openedFromNotification is  "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/appoxee/activities/Inbox;->mOpenedFromNotification:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 591
    iget-boolean v3, p0, Lcom/appoxee/activities/Inbox;->mOpenedFromNotification:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/appoxee/Configuration;->GetAppDefaultActivityClass()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inbox: openning activity class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appoxee/Configuration;->GetAppDefaultActivityClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 593
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 594
    .local v0, "backIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/appoxee/Configuration;->GetAppDefaultActivityClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    invoke-virtual {p0, v0}, Lcom/appoxee/activities/Inbox;->startActivity(Landroid/content/Intent;)V

    .line 597
    .end local v0    # "backIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/appoxee/activities/Inbox;->finish()V

    goto :goto_0
.end method

.method public deleteItem(Landroid/view/View;)V
    .locals 8
    .param p1, "deleteButton"    # Landroid/view/View;

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 230
    .local v3, "tag":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 231
    const-string v4, "Error: DELETE button was visible without information about the current row. Note: the DELETE Button visibility in the XML must be set to GONE by default"

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 241
    .end local v3    # "tag":Ljava/lang/Object;
    :goto_0
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 242
    return-void

    .line 234
    .restart local v3    # "tag":Ljava/lang/Object;
    :cond_0
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "tag":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 235
    .local v2, "position":I
    iget-object v4, p0, Lcom/appoxee/activities/Inbox;->mAdapter:Lcom/appoxee/activities/Inbox$InboxCursorAdapter;

    invoke-virtual {v4}, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 236
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 237
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    .line 238
    .local v1, "id":I
    new-instance v4, Lcom/appoxee/inbox/Delete;

    invoke-direct {v4}, Lcom/appoxee/inbox/Delete;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/appoxee/inbox/Delete;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public inboxInit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 87
    invoke-virtual {p0}, Lcom/appoxee/activities/Inbox;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 88
    .local v1, "mInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0, v4}, Lcom/appoxee/activities/Inbox;->requestWindowFeature(I)Z

    .line 89
    const-string v2, "inbox_layout"

    invoke-static {v2}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 90
    .local v0, "layout":Landroid/widget/RelativeLayout;
    invoke-direct {p0, v0}, Lcom/appoxee/activities/Inbox;->setInboxTitle(Landroid/widget/RelativeLayout;)V

    .line 91
    invoke-direct {p0, v0}, Lcom/appoxee/activities/Inbox;->setButtons(Landroid/widget/RelativeLayout;)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/appoxee/activities/Inbox;->setContentView(Landroid/view/View;)V

    .line 93
    new-instance v2, Lcom/appoxee/activities/Inbox$3;

    invoke-direct {v2, p0}, Lcom/appoxee/activities/Inbox$3;-><init>(Lcom/appoxee/activities/Inbox;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    new-instance v2, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;

    invoke-direct {v2, p0, p0, v5, v4}, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;-><init>(Lcom/appoxee/activities/Inbox;Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v2, p0, Lcom/appoxee/activities/Inbox;->mAdapter:Lcom/appoxee/activities/Inbox$InboxCursorAdapter;

    .line 105
    const-string v2, "inbox_list"

    invoke-static {v2}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appoxee/activities/Inbox;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/appoxee/widgets/PullToRefreshListView;

    iput-object v2, p0, Lcom/appoxee/activities/Inbox;->mPullRefreshListView:Lcom/appoxee/widgets/PullToRefreshListView;

    .line 106
    iget-object v2, p0, Lcom/appoxee/activities/Inbox;->mPullRefreshListView:Lcom/appoxee/widgets/PullToRefreshListView;

    iget-object v3, p0, Lcom/appoxee/activities/Inbox;->mAdapter:Lcom/appoxee/activities/Inbox$InboxCursorAdapter;

    invoke-virtual {v2, v3}, Lcom/appoxee/widgets/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    invoke-virtual {p0}, Lcom/appoxee/activities/Inbox;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 115
    iget-object v2, p0, Lcom/appoxee/activities/Inbox;->mPullRefreshListView:Lcom/appoxee/widgets/PullToRefreshListView;

    new-instance v3, Lcom/appoxee/activities/Inbox$4;

    invoke-direct {v3, p0}, Lcom/appoxee/activities/Inbox$4;-><init>(Lcom/appoxee/activities/Inbox;)V

    invoke-virtual {v2, v3}, Lcom/appoxee/widgets/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 155
    iget-object v2, p0, Lcom/appoxee/activities/Inbox;->mPullRefreshListView:Lcom/appoxee/widgets/PullToRefreshListView;

    new-instance v3, Lcom/appoxee/activities/Inbox$5;

    invoke-direct {v3, p0}, Lcom/appoxee/activities/Inbox$5;-><init>(Lcom/appoxee/activities/Inbox;)V

    invoke-virtual {v2, v3}, Lcom/appoxee/widgets/PullToRefreshListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 177
    iget-object v2, p0, Lcom/appoxee/activities/Inbox;->mPullRefreshListView:Lcom/appoxee/widgets/PullToRefreshListView;

    new-instance v3, Lcom/appoxee/activities/Inbox$6;

    invoke-direct {v3, p0}, Lcom/appoxee/activities/Inbox$6;-><init>(Lcom/appoxee/activities/Inbox;)V

    invoke-virtual {v2, v3}, Lcom/appoxee/widgets/PullToRefreshListView;->setOnRefreshListener(Lcom/appoxee/widgets/PullToRefreshListView$OnRefreshListener;)V

    .line 182
    iget-boolean v2, p0, Lcom/appoxee/activities/Inbox;->mOpenedFromNotification:Z

    if-nez v2, :cond_0

    .line 183
    new-instance v2, Lcom/appoxee/inbox/Update;

    invoke-direct {v2}, Lcom/appoxee/inbox/Update;-><init>()V

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "Regular"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/appoxee/inbox/Update;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/appoxee/activities/Inbox;->close(Landroid/view/View;)V

    .line 577
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/appoxee/activities/Inbox;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 78
    const-string v1, "OPENED_FROM_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/appoxee/activities/Inbox;->mOpenedFromNotification:Z

    .line 80
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appoxee/activities/Inbox;->builder:Landroid/app/AlertDialog$Builder;

    .line 81
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appoxee/activities/Inbox;->logsBuilder:Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {p0}, Lcom/appoxee/activities/Inbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {p0}, Lcom/appoxee/activities/Inbox;->inboxInit()V

    .line 84
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    new-instance v0, Lcom/appoxee/activities/Inbox$InboxCursorLoader;

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getHelper()Lcom/appoxee/inbox/DatabaseHelper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appoxee/activities/Inbox$InboxCursorLoader;-><init>(Landroid/content/Context;Lcom/appoxee/inbox/DatabaseHelper;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 603
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 604
    const-string v0, "Logs"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 605
    const/4 v0, 0x2

    const-string v1, "Tags"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 606
    return v3
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 503
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/appoxee/activities/Inbox;->mAdapter:Lcom/appoxee/activities/Inbox$InboxCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 504
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/support/v4/content/Loader;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/appoxee/activities/Inbox;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/appoxee/activities/Inbox;->mAdapter:Lcom/appoxee/activities/Inbox$InboxCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 508
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    .line 611
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 621
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 625
    :goto_0
    return v2

    .line 614
    :pswitch_0
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 615
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v2, "registration_values_pt"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, "pt":Ljava/lang/String;
    iget-object v2, p0, Lcom/appoxee/activities/Inbox;->logsBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Registration ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Logs"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 617
    iget-object v2, p0, Lcom/appoxee/activities/Inbox;->logsBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/appoxee/activities/Inbox;->logsDialog:Landroid/app/AlertDialog;

    .line 618
    iget-object v2, p0, Lcom/appoxee/activities/Inbox;->logsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    move v2, v5

    .line 619
    goto :goto_0

    .end local v0    # "pref":Landroid/content/SharedPreferences;
    .end local v1    # "pt":Ljava/lang/String;
    :pswitch_1
    move v2, v5

    .line 625
    goto :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 567
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 568
    iget-object v0, p0, Lcom/appoxee/activities/Inbox;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/appoxee/activities/Inbox;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 569
    iget-object v0, p0, Lcom/appoxee/activities/Inbox;->loaderBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/appoxee/activities/Inbox;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 570
    invoke-static {}, Lcom/appoxee/Appoxee;->onStop()V

    .line 572
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const-string v4, "APPOXEE_INBOX_STATUS"

    .line 512
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 513
    iget-object v1, p0, Lcom/appoxee/activities/Inbox;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "APPOXEE_INBOX_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/appoxee/activities/Inbox;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 514
    iget-object v1, p0, Lcom/appoxee/activities/Inbox;->loaderBroadcast:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "APPOXEE_INBOX_STATUS"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/appoxee/activities/Inbox;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 516
    iget-object v1, p0, Lcom/appoxee/activities/Inbox;->mAdapter:Lcom/appoxee/activities/Inbox$InboxCursorAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appoxee/activities/Inbox;->mAdapter:Lcom/appoxee/activities/Inbox$InboxCursorAdapter;

    invoke-virtual {v1}, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 517
    new-instance v0, Landroid/content/Intent;

    const-string v1, "APPOXEE_INBOX_STATUS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, "inboxUpdate":Landroid/content/Intent;
    const-string v1, "count"

    iget-object v2, p0, Lcom/appoxee/activities/Inbox;->mAdapter:Lcom/appoxee/activities/Inbox$InboxCursorAdapter;

    invoke-virtual {v2}, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 522
    .end local v0    # "inboxUpdate":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public openFeedback()V
    .locals 2

    .prologue
    .line 327
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appoxee/activities/Feedback;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/appoxee/activities/Inbox;->startActivity(Landroid/content/Intent;)V

    .line 329
    return-void
.end method

.method public openInboxItem(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 208
    iget-object v2, p0, Lcom/appoxee/activities/Inbox;->mAdapter:Lcom/appoxee/activities/Inbox$InboxCursorAdapter;

    invoke-virtual {v2}, Lcom/appoxee/activities/Inbox$InboxCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 209
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 210
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/appoxee/activities/InboxMessage;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v1, "viewIntent":Landroid/content/Intent;
    const-string v2, "url"

    const-string v3, "link"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v2, "messageId"

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 213
    const-string v2, "hasMessage"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v1}, Lcom/appoxee/activities/Inbox;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method public openMoreApps()V
    .locals 2

    .prologue
    .line 332
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appoxee/activities/MoreApps;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/appoxee/activities/Inbox;->startActivity(Landroid/content/Intent;)V

    .line 334
    return-void
.end method

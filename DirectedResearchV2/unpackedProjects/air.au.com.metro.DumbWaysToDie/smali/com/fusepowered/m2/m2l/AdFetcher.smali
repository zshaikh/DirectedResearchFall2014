.class public Lcom/fusepowered/m2/m2l/AdFetcher;
.super Ljava/lang/Object;
.source "AdFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/AdFetcher$FetchStatus;
    }
.end annotation


# static fields
.field public static final AD_CONFIGURATION_KEY:Ljava/lang/String; = "Ad-Configuration"

.field public static final CLICKTHROUGH_URL_KEY:Ljava/lang/String; = "Clickthrough-Url"

.field public static final HTML_RESPONSE_BODY_KEY:Ljava/lang/String; = "Html-Response-Body"

.field public static final REDIRECT_URL_KEY:Ljava/lang/String; = "Redirect-Url"

.field public static final SCROLLABLE_KEY:Ljava/lang/String; = "Scrollable"


# instance fields
.field private mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

.field private mCurrentTask:Lcom/fusepowered/m2/m2l/AdFetchTask;

.field private final mTaskTracker:Lcom/fusepowered/m2/m2l/TaskTracker;

.field private mTimeoutMilliseconds:I

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/m2l/AdViewController;Ljava/lang/String;)V
    .locals 1
    .param p1, "adview"    # Lcom/fusepowered/m2/m2l/AdViewController;
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0x2710

    iput v0, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mTimeoutMilliseconds:I

    .line 71
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    .line 72
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mUserAgent:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/fusepowered/m2/m2l/TaskTracker;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/TaskTracker;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mTaskTracker:Lcom/fusepowered/m2/m2l/TaskTracker;

    .line 75
    return-void
.end method

.method private getCurrentTaskId()J
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mTaskTracker:Lcom/fusepowered/m2/m2l/TaskTracker;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/TaskTracker;->getCurrentTaskId()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public cancelFetch()V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mCurrentTask:Lcom/fusepowered/m2/m2l/AdFetchTask;

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Canceling fetch ad for task #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdFetcher;->getCurrentTaskId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mCurrentTask:Lcom/fusepowered/m2/m2l/AdFetchTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/AdFetchTask;->cancel(Z)Z

    .line 99
    :cond_0
    return-void
.end method

.method cleanup()V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdFetcher;->cancelFetch()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mUserAgent:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public fetchAdForUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const-string v5, "MoPub"

    .line 78
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mTaskTracker:Lcom/fusepowered/m2/m2l/TaskTracker;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/TaskTracker;->newTaskStarted()V

    .line 79
    const-string v1, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fetching ad for task #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdFetcher;->getCurrentTaskId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mCurrentTask:Lcom/fusepowered/m2/m2l/AdFetchTask;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mCurrentTask:Lcom/fusepowered/m2/m2l/AdFetchTask;

    invoke-virtual {v1, v4}, Lcom/fusepowered/m2/m2l/AdFetchTask;->cancel(Z)Z

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mTaskTracker:Lcom/fusepowered/m2/m2l/TaskTracker;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mAdViewController:Lcom/fusepowered/m2/m2l/AdViewController;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mUserAgent:Ljava/lang/String;

    iget v4, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mTimeoutMilliseconds:I

    invoke-static {v1, v2, v3, v4}, Lcom/fusepowered/m2/m2l/factories/AdFetchTaskFactory;->create(Lcom/fusepowered/m2/m2l/TaskTracker;Lcom/fusepowered/m2/m2l/AdViewController;Ljava/lang/String;I)Lcom/fusepowered/m2/m2l/AdFetchTask;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mCurrentTask:Lcom/fusepowered/m2/m2l/AdFetchTask;

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mCurrentTask:Lcom/fusepowered/m2/m2l/AdFetchTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/fusepowered/m2/m2l/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 90
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "MoPub"

    const-string v1, "Error executing AdFetchTask"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setTimeout(I)V
    .locals 0
    .param p1, "milliseconds"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/fusepowered/m2/m2l/AdFetcher;->mTimeoutMilliseconds:I

    .line 110
    return-void
.end method

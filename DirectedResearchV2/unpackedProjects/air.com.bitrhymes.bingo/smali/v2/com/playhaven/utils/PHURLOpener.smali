.class public Lv2/com/playhaven/utils/PHURLOpener;
.super Landroid/app/ProgressDialog;
.source "PHURLOpener.java"

# interfaces
.implements Lv2/com/playhaven/listeners/PHHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/com/playhaven/utils/PHURLOpener$Listener;
    }
.end annotation


# static fields
.field private static final LOADING_MESSAGE:Ljava/lang/String; = "Loading..."


# instance fields
.field private final MARKET_URL_TEMPLATE:Ljava/lang/String;

.field private final MAXIMUM_REDIRECTS:I

.field private config:Lv2/com/playhaven/configuration/PHConfiguration;

.field private conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

.field private contentTemplateCallback:Ljava/lang/String;

.field private isLoading:Z

.field private listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lv2/com/playhaven/utils/PHURLOpener$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private shouldOpenUrl:Z

.field private targetURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v0, "http://play.google.com/marketplace/apps/details?id=%s"

    iput-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->MARKET_URL_TEMPLATE:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->isLoading:Z

    .line 65
    const/16 v0, 0xa

    iput v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->MAXIMUM_REDIRECTS:I

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->shouldOpenUrl:Z

    .line 98
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v0}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lv2/com/playhaven/utils/PHURLOpener$Listener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lv2/com/playhaven/utils/PHURLOpener$Listener;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lv2/com/playhaven/utils/PHURLOpener;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->listener:Ljava/lang/ref/WeakReference;

    .line 88
    return-void
.end method

.method private fail()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/utils/PHURLOpener$Listener;

    invoke-interface {v0, p0}, Lv2/com/playhaven/utils/PHURLOpener$Listener;->onURLOpenerFailed(Lv2/com/playhaven/utils/PHURLOpener;)V

    .line 302
    :cond_0
    invoke-direct {p0}, Lv2/com/playhaven/utils/PHURLOpener;->invalidate()V

    .line 303
    return-void
.end method

.method private finish()V
    .locals 3

    .prologue
    .line 200
    iget-boolean v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->isLoading:Z

    if-eqz v0, :cond_2

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->isLoading:Z

    .line 203
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    invoke-virtual {v0}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->getLastRedirectURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->targetURL:Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHURLOpener - final redirect location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lv2/com/playhaven/utils/PHURLOpener;->targetURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 207
    iget-boolean v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->shouldOpenUrl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->targetURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->targetURL:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->targetURL:Ljava/lang/String;

    const-string v1, "market:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->targetURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lv2/com/playhaven/utils/PHURLOpener;->openMarketURL(Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/utils/PHURLOpener$Listener;

    invoke-interface {v0, p0}, Lv2/com/playhaven/utils/PHURLOpener$Listener;->onURLOpenerFinished(Lv2/com/playhaven/utils/PHURLOpener;)V

    .line 223
    :cond_1
    invoke-direct {p0}, Lv2/com/playhaven/utils/PHURLOpener;->invalidate()V

    .line 225
    :cond_2
    return-void

    .line 216
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lv2/com/playhaven/utils/PHURLOpener;->targetURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Lv2/com/playhaven/utils/PHURLOpener;->launchActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private invalidate()V
    .locals 2

    .prologue
    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->listener:Ljava/lang/ref/WeakReference;

    .line 285
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->cancel(Z)Z

    .line 289
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-virtual {p0}, Lv2/com/playhaven/utils/PHURLOpener;->dismiss()V

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private launchActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 233
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {p0}, Lv2/com/playhaven/utils/PHURLOpener;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv2/com/playhaven/configuration/PHConfiguration;->getIsRunningUITests(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHURLOpener just launched intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lv2/com/playhaven/utils/PHURLOpener;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private openMarketURL(Ljava/lang/String;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-string v9, "android.intent.action.VIEW"

    .line 247
    const-string v4, "Got a market:// URL, verifying market app is installed"

    invoke-static {v4}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0}, Lv2/com/playhaven/utils/PHURLOpener;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 258
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v4, 0x10000

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 261
    .local v2, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 262
    const-string v4, "Market app is not installed and market:// not supported!"

    invoke-static {v4}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 265
    const-string v4, "http://play.google.com/marketplace/apps/details?id=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v7, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 270
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 273
    .end local v3    # "uri":Landroid/net/Uri;
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHURLOpener is trying to launch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 275
    invoke-direct {p0, v0}, Lv2/com/playhaven/utils/PHURLOpener;->launchActivity(Landroid/content/Intent;)V

    .line 276
    return-void
.end method


# virtual methods
.method public getConnection()Lv2/com/playhaven/requests/base/PHAsyncRequest;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    return-object v0
.end method

.method public getContentTemplateCallback()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->contentTemplateCallback:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->targetURL:Ljava/lang/String;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->isLoading:Z

    return v0
.end method

.method public onHttpRequestFailed(Lv2/com/playhaven/model/PHError;)V
    .locals 2
    .param p1, "e"    # Lv2/com/playhaven/model/PHError;

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHURLOpener failed with error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Lv2/com/playhaven/utils/PHURLOpener;->fail()V

    .line 333
    return-void
.end method

.method public onHttpRequestSucceeded(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "response"    # Ljava/nio/ByteBuffer;
    .param p2, "responseCode"    # I

    .prologue
    .line 316
    const/16 v0, 0x12c

    if-ge p2, v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHURLOpener finishing from initial url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lv2/com/playhaven/utils/PHURLOpener;->targetURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 318
    invoke-direct {p0}, Lv2/com/playhaven/utils/PHURLOpener;->finish()V

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHURLOpener failing from initial url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lv2/com/playhaven/utils/PHURLOpener;->targetURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 321
    invoke-direct {p0}, Lv2/com/playhaven/utils/PHURLOpener;->fail()V

    goto :goto_0
.end method

.method public open(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 167
    iput-object p1, p0, Lv2/com/playhaven/utils/PHURLOpener;->targetURL:Ljava/lang/String;

    .line 169
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    iget-object v1, p0, Lv2/com/playhaven/utils/PHURLOpener;->targetURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->targetURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 173
    const-string v0, "Opening url in PHURLOpener: %s"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lv2/com/playhaven/utils/PHURLOpener;->targetURL:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 175
    iput-boolean v3, p0, Lv2/com/playhaven/utils/PHURLOpener;->isLoading:Z

    .line 178
    new-instance v0, Lv2/com/playhaven/requests/base/PHAsyncRequest;

    invoke-direct {v0, p0}, Lv2/com/playhaven/requests/base/PHAsyncRequest;-><init>(Lv2/com/playhaven/listeners/PHHttpRequestListener;)V

    iput-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    .line 179
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->setMaxRedirects(I)V

    .line 180
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    sget-object v1, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->Get:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    iput-object v1, v0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->request_type:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    .line 181
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    new-array v1, v3, [Landroid/net/Uri;

    iget-object v2, p0, Lv2/com/playhaven/utils/PHURLOpener;->targetURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 184
    const-string v0, "Loading..."

    invoke-virtual {p0, v0}, Lv2/com/playhaven/utils/PHURLOpener;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p0}, Lv2/com/playhaven/utils/PHURLOpener;->show()V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lv2/com/playhaven/utils/PHURLOpener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/com/playhaven/utils/PHURLOpener$Listener;

    invoke-interface {v0, p0}, Lv2/com/playhaven/utils/PHURLOpener$Listener;->onURLOpenerFinished(Lv2/com/playhaven/utils/PHURLOpener;)V

    goto :goto_0
.end method

.method public setConnection(Lv2/com/playhaven/requests/base/PHAsyncRequest;)V
    .locals 0
    .param p1, "conn"    # Lv2/com/playhaven/requests/base/PHAsyncRequest;

    .prologue
    .line 142
    iput-object p1, p0, Lv2/com/playhaven/utils/PHURLOpener;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    .line 143
    return-void
.end method

.method public setContentTemplateCallback(Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lv2/com/playhaven/utils/PHURLOpener;->contentTemplateCallback:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setShouldOpenFinalURL(Z)V
    .locals 0
    .param p1, "shouldOpen"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lv2/com/playhaven/utils/PHURLOpener;->shouldOpenUrl:Z

    .line 112
    return-void
.end method

.method public setTargetURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lv2/com/playhaven/utils/PHURLOpener;->targetURL:Ljava/lang/String;

    .line 150
    return-void
.end method

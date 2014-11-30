.class public Lcom/playhaven/src/common/PHURLLoader;
.super Ljava/lang/Object;
.source "PHURLLoader.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAsyncRequest$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/common/PHURLLoader$Delegate;
    }
.end annotation


# static fields
.field private static allLoaders:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/playhaven/src/common/PHURLLoader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MARKET_URL_TEMPLATE:Ljava/lang/String;

.field private final MAXIMUM_REDIRECTS:I

.field private callback:Ljava/lang/String;

.field private conn:Lcom/playhaven/src/common/PHAsyncRequest;

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public delegate:Lcom/playhaven/src/common/PHURLLoader$Delegate;

.field public isLoading:Z

.field public openFinalURL:Z

.field private progressDialog:Landroid/app/ProgressDialog;

.field private targetURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/playhaven/src/common/PHURLLoader;->allLoaders:Ljava/util/LinkedHashSet;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "http://play.google.com/store/apps/details?id=%s"

    iput-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->MARKET_URL_TEMPLATE:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playhaven/src/common/PHURLLoader;->isLoading:Z

    .line 45
    const/16 v0, 0xa

    iput v0, p0, Lcom/playhaven/src/common/PHURLLoader;->MAXIMUM_REDIRECTS:I

    .line 65
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->progressDialog:Landroid/app/ProgressDialog;

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->context:Ljava/lang/ref/WeakReference;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/playhaven/src/common/PHURLLoader;->openFinalURL:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/playhaven/src/common/PHURLLoader$Delegate;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/playhaven/src/common/PHURLLoader$Delegate;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHURLLoader;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p2, p0, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$Delegate;

    .line 62
    return-void
.end method

.method public static addLoader(Lcom/playhaven/src/common/PHURLLoader;)V
    .locals 1
    .param p0, "loader"    # Lcom/playhaven/src/common/PHURLLoader;

    .prologue
    .line 135
    sget-object v0, Lcom/playhaven/src/common/PHURLLoader;->allLoaders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method private fail()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$Delegate;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$Delegate;

    invoke-interface {v0, p0}, Lcom/playhaven/src/common/PHURLLoader$Delegate;->loaderFailed(Lcom/playhaven/src/common/PHURLLoader;)V

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHURLLoader;->invalidate()V

    .line 249
    return-void
.end method

.method private finish()V
    .locals 3

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/playhaven/src/common/PHURLLoader;->isLoading:Z

    if-eqz v0, :cond_2

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playhaven/src/common/PHURLLoader;->isLoading:Z

    .line 171
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHAsyncRequest;->getLastRedirectURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURL:Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PHURLLoader - final redirect location: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 175
    iget-boolean v0, p0, Lcom/playhaven/src/common/PHURLLoader;->openFinalURL:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURL:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURL:Ljava/lang/String;

    const-string v1, "market:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/playhaven/src/common/PHURLLoader;->redirectMarketURL(Ljava/lang/String;)V

    .line 186
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$Delegate;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$Delegate;

    invoke-interface {v0, p0}, Lcom/playhaven/src/common/PHURLLoader$Delegate;->loaderFinished(Lcom/playhaven/src/common/PHURLLoader;)V

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHURLLoader;->invalidate()V

    .line 191
    :cond_2
    return-void

    .line 182
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Lcom/playhaven/src/common/PHURLLoader;->launchActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static getAllLoaders()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/playhaven/src/common/PHURLLoader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    sget-object v0, Lcom/playhaven/src/common/PHURLLoader;->allLoaders:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public static invalidateLoaders(Lcom/playhaven/src/common/PHURLLoader$Delegate;)V
    .locals 4
    .param p0, "delegate"    # Lcom/playhaven/src/common/PHURLLoader$Delegate;

    .prologue
    .line 115
    sget-object v2, Lcom/playhaven/src/common/PHURLLoader;->allLoaders:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    .line 117
    .local v0, "allLoadersCopy":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/playhaven/src/common/PHURLLoader;>;"
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    return-void

    .line 117
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/playhaven/src/common/PHURLLoader;

    .line 118
    .local v1, "loader":Lcom/playhaven/src/common/PHURLLoader;
    iget-object v3, v1, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$Delegate;

    if-ne v3, p0, :cond_0

    .line 121
    invoke-virtual {v1}, Lcom/playhaven/src/common/PHURLLoader;->invalidate()V

    goto :goto_0
.end method

.method private launchActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    sget-boolean v0, Lcom/playhaven/src/common/PHConfig;->runningTests:Z

    if-eqz v0, :cond_0

    .line 197
    .end local p0    # "this":Lcom/playhaven/src/common/PHURLLoader;
    :goto_0
    return-void

    .line 196
    .restart local p0    # "this":Lcom/playhaven/src/common/PHURLLoader;
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/playhaven/src/common/PHURLLoader;
    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static removeLoader(Lcom/playhaven/src/common/PHURLLoader;)V
    .locals 1
    .param p0, "loader"    # Lcom/playhaven/src/common/PHURLLoader;

    .prologue
    .line 131
    sget-object v0, Lcom/playhaven/src/common/PHURLLoader;->allLoaders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method


# virtual methods
.method public getCallback()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->callback:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Lcom/playhaven/src/common/PHAsyncRequest;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    return-object v0
.end method

.method public getDialog()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public getTargetURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURL:Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$Delegate;

    .line 233
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/playhaven/src/common/PHAsyncRequest;->cancel(Z)Z

    .line 238
    invoke-static {p0}, Lcom/playhaven/src/common/PHURLLoader;->removeLoader(Lcom/playhaven/src/common/PHURLLoader;)V

    .line 236
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public open()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 141
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    iget-object v1, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 146
    const-string v0, "Opening url in PHURLLoader: %s"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURL:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 148
    iput-boolean v3, p0, Lcom/playhaven/src/common/PHURLLoader;->isLoading:Z

    .line 150
    new-instance v0, Lcom/playhaven/src/common/PHAsyncRequest;

    invoke-direct {v0, p0}, Lcom/playhaven/src/common/PHAsyncRequest;-><init>(Lcom/playhaven/src/common/PHAsyncRequest$Delegate;)V

    iput-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    .line 151
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/playhaven/src/common/PHAsyncRequest;->setMaxRedirects(I)V

    .line 152
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    sget-object v1, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Get:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    iput-object v1, v0, Lcom/playhaven/src/common/PHAsyncRequest;->request_type:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    .line 153
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    new-array v1, v3, [Landroid/net/Uri;

    iget-object v2, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/playhaven/src/common/PHAsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    invoke-static {p0}, Lcom/playhaven/src/common/PHURLLoader;->addLoader(Lcom/playhaven/src/common/PHURLLoader;)V

    .line 155
    monitor-exit p0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$Delegate;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$Delegate;

    invoke-interface {v0, p0}, Lcom/playhaven/src/common/PHURLLoader$Delegate;->loaderFinished(Lcom/playhaven/src/common/PHURLLoader;)V

    goto :goto_0
.end method

.method public redirectMarketURL(Ljava/lang/String;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-string v9, "android.intent.action.VIEW"

    .line 199
    iget-object v4, p0, Lcom/playhaven/src/common/PHURLLoader;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 228
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string v4, "Got a market:// URL, verifying market app is installed"

    invoke-static {v4}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 211
    iget-object v4, p0, Lcom/playhaven/src/common/PHURLLoader;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 213
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v4, 0x10000

    .line 212
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 215
    .local v2, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 216
    const-string v4, "Market app is not installed and market:// not supported!"

    invoke-static {v4}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 220
    const-string v4, "http://play.google.com/store/apps/details?id=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 221
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v7, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 220
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 224
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 227
    .end local v3    # "uri":Landroid/net/Uri;
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0, v0}, Lcom/playhaven/src/common/PHURLLoader;->launchActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public requestFailed(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PHURLLoader failed with error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/playhaven/src/common/PHURLLoader;->fail()V

    .line 269
    return-void
.end method

.method public requestFinished(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "response"    # Ljava/nio/ByteBuffer;
    .param p2, "responseCode"    # I

    .prologue
    .line 256
    const/16 v0, 0x12c

    if-ge p2, v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PHURLLoader finishing from initial url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/playhaven/src/common/PHURLLoader;->finish()V

    .line 263
    :goto_0
    return-void

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PHURLLoader failing from initial url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/playhaven/src/common/PHURLLoader;->fail()V

    goto :goto_0
.end method

.method public setCallback(Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/playhaven/src/common/PHURLLoader;->callback:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setConnection(Lcom/playhaven/src/common/PHAsyncRequest;)V
    .locals 0
    .param p1, "conn"    # Lcom/playhaven/src/common/PHAsyncRequest;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/playhaven/src/common/PHURLLoader;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    .line 98
    return-void
.end method

.method public setProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/playhaven/src/common/PHURLLoader;->progressDialog:Landroid/app/ProgressDialog;

    .line 90
    return-void
.end method

.method public setTargetURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURL:Ljava/lang/String;

    .line 104
    return-void
.end method

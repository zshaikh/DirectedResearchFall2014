.class public final Lcom/facebook/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static final ANALYTICS_EVENT:Ljava/lang/String; = "event"

.field private static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field private static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

.field private static final ATTRIBUTION_KEY:Ljava/lang/String; = "attribution"

.field private static final ATTRIBUTION_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.attributionTracking"

.field private static final AUTO_PUBLISH:Ljava/lang/String; = "auto_publish"

.field private static final DEFAULT_CORE_POOL_SIZE:I = 0x5

.field private static final DEFAULT_KEEP_ALIVE:I = 0x1

.field private static final DEFAULT_MAXIMUM_POOL_SIZE:I = 0x80

.field private static final DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final FACEBOOK_COM:Ljava/lang/String; = "facebook.com"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MOBILE_INSTALL_EVENT:Ljava/lang/String; = "MOBILE_APP_INSTALL"

.field private static final PUBLISH_ACTIVITY_PATH:Ljava/lang/String; = "%s/activities"

.field private static final TAG:Ljava/lang/String;

.field private static volatile appVersion:Ljava/lang/String;

.field private static volatile executor:Ljava/util/concurrent/Executor;

.field private static volatile facebookDomain:Ljava/lang/String;

.field private static final loggingBehaviors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile shouldAutoPublishInstall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    const-class v0, Lcom/facebook/Settings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/Settings;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 46
    sput-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    .line 52
    const-string v0, "facebook.com"

    sput-object v0, Lcom/facebook/Settings;->facebookDomain:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/Settings;->LOCK:Ljava/lang/Object;

    .line 60
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 59
    sput-object v0, Lcom/facebook/Settings;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    .line 70
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/Settings;->DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    .line 72
    new-instance v0, Lcom/facebook/Settings$1;

    invoke-direct {v0}, Lcom/facebook/Settings$1;-><init>()V

    sput-object v0, Lcom/facebook/Settings;->DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
    .locals 2
    .param p0, "behavior"    # Lcom/facebook/LoggingBehavior;

    .prologue
    .line 104
    sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    monitor-exit v0

    .line 107
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static final clearLoggingBehaviors()V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 131
    monitor-exit v0

    .line 134
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    sget-object v0, Lcom/facebook/Settings;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method private static getAsyncTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 213
    const/4 v1, 0x0

    .line 215
    .local v1, "executorField":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v3, Landroid/os/AsyncTask;

    const-string v4, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 220
    const/4 v2, 0x0

    .line 222
    .local v2, "executorObject":Ljava/lang/Object;
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 227
    if-nez v2, :cond_0

    move-object v3, v5

    .line 235
    .end local v2    # "executorObject":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 216
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, "e":Ljava/lang/NoSuchFieldException;
    move-object v3, v5

    .line 217
    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v2    # "executorObject":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    move-object v3, v5

    .line 224
    goto :goto_0

    .line 231
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    instance-of v3, v2, Ljava/util/concurrent/Executor;

    if-nez v3, :cond_1

    move-object v3, v5

    .line 232
    goto :goto_0

    .line 235
    :cond_1
    check-cast v2, Ljava/util/concurrent/Executor;

    .end local v2    # "executorObject":Ljava/lang/Object;
    move-object v3, v2

    goto :goto_0
.end method

.method public static getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v9, 0x0

    const-string v0, "aid"

    .line 419
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    .line 420
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/facebook/Settings;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 421
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v9

    .line 429
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 424
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_1
    const-string v0, "aid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 425
    .local v6, "attributionId":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 426
    goto :goto_0

    .line 427
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "attributionId":Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 428
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/facebook/Settings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Caught unexpected exception in getAttributionId(): "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 429
    goto :goto_0
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 9

    .prologue
    .line 161
    sget-object v8, Lcom/facebook/Settings;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 162
    :try_start_0
    sget-object v1, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1

    .line 163
    invoke-static {}, Lcom/facebook/Settings;->getAsyncTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 164
    .local v0, "executor":Ljava/util/concurrent/Executor;
    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x5

    const/16 v2, 0x80

    .line 166
    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/facebook/Settings;->DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/facebook/Settings;->DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 165
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 168
    .restart local v0    # "executor":Ljava/util/concurrent/Executor;
    :cond_0
    sput-object v0, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;

    .line 161
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    sget-object v1, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;

    return-object v1

    .line 161
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getFacebookDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/facebook/Settings;->facebookDomain:Ljava/lang/String;

    return-object v0
.end method

.method public static final getLoggingBehaviors()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 90
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getMigrationBundle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    const-string v0, "fbsdk:20130708"

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    const-string v0, "3.5.2"

    return-object v0
.end method

.method public static getShouldAutoPublishInstall()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    sget-boolean v0, Lcom/facebook/Settings;->shouldAutoPublishInstall:Z

    return v0
.end method

.method public static final isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z
    .locals 2
    .param p0, "behavior"    # Lcom/facebook/LoggingBehavior;

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 148
    :try_start_0
    sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static publishInstallAndWait(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 319
    invoke-static {p0, p1}, Lcom/facebook/Settings;->publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/Response;

    move-result-object v0

    .line 320
    .local v0, "response":Lcom/facebook/Response;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/Response;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/Settings;->publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/Response;

    move-result-object v0

    return-object v0
.end method

.method static publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/Response;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "isAutoPublish"    # Z

    .prologue
    .line 342
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 343
    :cond_0
    :try_start_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "context":Landroid/content/Context;
    const-string p1, "Both context and applicationId must be non-null"

    .end local p1    # "applicationId":Ljava/lang/String;
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local p2    # "isAutoPublish":Z
    :catch_0
    move-exception p0

    .line 408
    .local p0, "e":Ljava/lang/Exception;
    const-string p1, "Facebook-publish"

    invoke-static {p1, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 409
    new-instance p1, Lcom/facebook/Response;

    const/4 p2, 0x0

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/FacebookRequestError;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {p1, p2, v0, v1}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    move-object p0, p1

    .end local p0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object p0

    .line 345
    .local p0, "context":Landroid/content/Context;
    .restart local p1    # "applicationId":Ljava/lang/String;
    .restart local p2    # "isAutoPublish":Z
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Settings;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "attributionId":Ljava/lang/String;
    const-string v1, "com.facebook.sdk.attributionTracking"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 347
    .local v6, "preferences":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, "pingKey":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "jsonKey":Ljava/lang/String;
    const-wide/16 v2, 0x0

    invoke-interface {v6, v5, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 350
    .local v2, "lastPing":J
    const/4 v4, 0x0

    invoke-interface {v6, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, "lastResponseJSON":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 354
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/facebook/Settings;->setShouldAutoPublishInstall(Z)V

    .line 357
    :cond_2
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v7

    .line 358
    .local v7, "publishParams":Lcom/facebook/model/GraphObject;
    const-string v8, "event"

    const-string v9, "MOBILE_APP_INSTALL"

    invoke-interface {v7, v8, v9}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    const-string v8, "attribution"

    invoke-interface {v7, v8, v0}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    const-string v8, "auto_publish"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .end local p2    # "isAutoPublish":Z
    invoke-interface {v7, v8, p2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    const-string p2, "application_tracking_enabled"

    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->getLimitEventUsage(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, p2, v8}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    const-string p2, "application_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    invoke-interface {v7, p2, p0}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    const-string p0, "%s/activities"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, p2, v8

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 365
    .local p0, "publishUrl":Ljava/lang/String;
    const/4 p2, 0x0

    const/4 v8, 0x0

    invoke-static {p2, p0, v7, v8}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p2

    .line 367
    .local p2, "publishRequest":Lcom/facebook/Request;
    const-wide/16 v7, 0x0

    cmp-long p0, v2, v7

    if-eqz p0, :cond_6

    .line 368
    .end local v7    # "publishParams":Lcom/facebook/model/GraphObject;
    .end local p0    # "publishUrl":Ljava/lang/String;
    const/4 p0, 0x0

    .line 370
    .local p0, "graphObject":Lcom/facebook/model/GraphObject;
    if-eqz v4, :cond_3

    .line 371
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "applicationId":Ljava/lang/String;
    invoke-direct {p1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p0

    .line 377
    :cond_3
    :goto_2
    if-nez p0, :cond_5

    .line 378
    :try_start_3
    const-string p0, "true"

    .end local p0    # "graphObject":Lcom/facebook/model/GraphObject;
    const/4 p1, 0x0

    new-instance v0, Lcom/facebook/RequestBatch;

    .end local v0    # "attributionId":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/Request;

    .end local v1    # "jsonKey":Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p2, v1, v2

    .end local v2    # "lastPing":J
    invoke-direct {v0, v1}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V

    const/4 p2, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/facebook/Response;->createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;

    .end local p2    # "publishRequest":Lcom/facebook/Request;
    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/Response;

    goto/16 :goto_0

    .line 361
    .restart local v0    # "attributionId":Ljava/lang/String;
    .restart local v1    # "jsonKey":Ljava/lang/String;
    .restart local v2    # "lastPing":J
    .restart local v7    # "publishParams":Lcom/facebook/model/GraphObject;
    .local p0, "context":Landroid/content/Context;
    .restart local p1    # "applicationId":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .line 380
    .end local v7    # "publishParams":Lcom/facebook/model/GraphObject;
    .end local p1    # "applicationId":Ljava/lang/String;
    .local p0, "graphObject":Lcom/facebook/model/GraphObject;
    .restart local p2    # "publishRequest":Lcom/facebook/Request;
    :cond_5
    new-instance p1, Lcom/facebook/Response;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, p0, v1}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/model/GraphObject;Z)V

    .end local v0    # "attributionId":Ljava/lang/String;
    .end local v1    # "jsonKey":Ljava/lang/String;
    .end local p2    # "publishRequest":Lcom/facebook/Request;
    move-object p0, p1

    goto/16 :goto_0

    .line 382
    .end local p0    # "graphObject":Lcom/facebook/model/GraphObject;
    .restart local v0    # "attributionId":Ljava/lang/String;
    .restart local v1    # "jsonKey":Ljava/lang/String;
    .restart local p1    # "applicationId":Ljava/lang/String;
    .restart local p2    # "publishRequest":Lcom/facebook/Request;
    :cond_6
    if-nez v0, :cond_7

    .line 383
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "No attribution id returned from the Facebook application"

    .end local p1    # "applicationId":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 386
    .restart local p1    # "applicationId":Ljava/lang/String;
    :cond_7
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsAttribution()Z

    move-result p0

    if-nez p0, :cond_8

    .line 387
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Install attribution has been disabled on the server."

    .end local p1    # "applicationId":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 390
    .restart local p1    # "applicationId":Ljava/lang/String;
    :cond_8
    invoke-virtual {p2}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v0

    .line 393
    .local v0, "publishResponse":Lcom/facebook/Response;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 394
    .local p0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 395
    .end local v2    # "lastPing":J
    .end local p2    # "publishRequest":Lcom/facebook/Request;
    .local p1, "lastPing":J
    invoke-interface {p0, v5, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 398
    invoke-virtual {v0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object p1

    .end local p1    # "lastPing":J
    if-eqz p1, :cond_9

    .line 399
    invoke-virtual {v0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 400
    invoke-virtual {v0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 402
    :cond_9
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object p0, v0

    .line 404
    goto/16 :goto_0

    .line 374
    .local v0, "attributionId":Ljava/lang/String;
    .restart local v2    # "lastPing":J
    .local p0, "graphObject":Lcom/facebook/model/GraphObject;
    .restart local p2    # "publishRequest":Lcom/facebook/Request;
    :catch_1
    move-exception p1

    goto :goto_2
.end method

.method public static publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/Settings;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)V

    .line 249
    return-void
.end method

.method public static publishInstallAsync(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 265
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/Settings$2;

    invoke-direct {v2, v0, p1, p2}, Lcom/facebook/Settings$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 281
    return-void
.end method

.method public static final removeLoggingBehavior(Lcom/facebook/LoggingBehavior;)V
    .locals 2
    .param p0, "behavior"    # Lcom/facebook/LoggingBehavior;

    .prologue
    .line 119
    sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 120
    :try_start_0
    sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 119
    monitor-exit v0

    .line 122
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p0, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 449
    sput-object p0, Lcom/facebook/Settings;->appVersion:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public static setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 181
    const-string v0, "executor"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/facebook/Settings;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    sput-object p0, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;

    .line 182
    monitor-exit v0

    .line 185
    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setFacebookDomain(Ljava/lang/String;)V
    .locals 0
    .param p0, "facebookDomain"    # Ljava/lang/String;

    .prologue
    .line 209
    sput-object p0, Lcom/facebook/Settings;->facebookDomain:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public static setShouldAutoPublishInstall(Z)V
    .locals 0
    .param p0, "shouldAutoPublishInstall"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    sput-boolean p0, Lcom/facebook/Settings;->shouldAutoPublishInstall:Z

    .line 293
    return-void
.end method

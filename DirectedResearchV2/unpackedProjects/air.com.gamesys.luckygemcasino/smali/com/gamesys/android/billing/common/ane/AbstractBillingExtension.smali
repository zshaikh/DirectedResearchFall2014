.class public abstract Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;
.super Lcom/gamesys/android/common/tools/fwk/AbstractExtension;
.source "AbstractBillingExtension.java"

# interfaces
.implements Lcom/gamesys/android/billing/common/facade/INativeBillingExtension;


# static fields
.field public static final BILLING_CONTEXT_NAME_AMAZON_STORE:Ljava/lang/String; = "com.android.gamesys.billing.ane.context.AMAZONE_STORE"

.field public static final BILLING_CONTEXT_NAME_APPLE_STORE:Ljava/lang/String; = "com.android.gamesys.billing.ane.context.APPLE_STORE"

.field public static final BILLING_CONTEXT_NAME_AUTO:Ljava/lang/String; = "com.android.gamesys.billing.ane.context.AUTO"

.field public static final BILLING_CONTEXT_NAME_GOOGLE_PLAY:Ljava/lang/String; = "com.android.gamesys.billing.ane.context.GOOGLE_PLAY"

.field private static MAX_THREAD:I = 0x0

.field public static final PLATFORM_NAME_AMAZON:Ljava/lang/String; = "Amazon"

.field public static final PLATFORM_NAME_GOOGLE_PLAY:Ljava/lang/String; = "GooglePlay"

.field protected static TAG:Ljava/lang/String;

.field protected static contextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;",
            ">;"
        }
    .end annotation
.end field

.field private static executorService:Ljava/util/concurrent/ExecutorService;

.field private static mDebugEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-class v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->mDebugEnabled:Z

    .line 51
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    .line 52
    const/high16 v2, 0x3f800000

    .line 51
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->contextMap:Ljava/util/Map;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 58
    const/4 v0, 0x5

    sput v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->MAX_THREAD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;-><init>()V

    return-void
.end method

.method public static enableDebug(Z)V
    .locals 0
    .param p0, "isEnabled"    # Z

    .prologue
    .line 109
    sput-boolean p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->mDebugEnabled:Z

    .line 110
    return-void
.end method

.method public static final getContext(Ljava/lang/String;)Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
    .locals 1
    .param p0, "contextName"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->contextMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    return-object v0
.end method

.method public static getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 124
    sget v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->MAX_THREAD:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 126
    :cond_0
    sget-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->mDebugEnabled:Z

    return v0
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-boolean v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return-void
.end method

.method public static logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-boolean v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    return-void
.end method

.method public static submitWorker(Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;)Ljava/util/concurrent/Future;
    .locals 1
    .param p0, "worker"    # Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 65
    :cond_0
    sget-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->TAG:Ljava/lang/String;

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->TAG:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

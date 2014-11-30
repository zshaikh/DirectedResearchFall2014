.class Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHRefreshNotificationFunction;
.super Ljava/lang/Object;
.source "PlayHavenExtensionContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/extensions/android/PlayHavenExtensionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PHRefreshNotificationFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;


# direct methods
.method private constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHRefreshNotificationFunction;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHRefreshNotificationFunction;)V
    .locals 0

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHRefreshNotificationFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 774
    const/4 v2, 0x0

    .line 775
    .local v2, "res":Z
    const/4 v3, 0x0

    .line 778
    .local v3, "resFreObject":Lcom/adobe/fre/FREObject;
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v1

    .line 779
    .local v1, "isTestMode":Z
    iget-object v4, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHRefreshNotificationFunction;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    invoke-virtual {v4, v1}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->ffiRefreshNotification(Z)Z

    move-result v2

    .line 780
    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 786
    .end local v1    # "isTestMode":Z
    :goto_0
    return-object v3

    .line 782
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 784
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "[PHExtension]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

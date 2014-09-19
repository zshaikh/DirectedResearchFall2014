.class Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHMoveNotificationFunction;
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
    name = "PHMoveNotificationFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;


# direct methods
.method private constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;)V
    .locals 0
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHMoveNotificationFunction;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHMoveNotificationFunction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 686
    invoke-direct {p0, p1}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHMoveNotificationFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .parameter "arg0"
    .parameter "args"

    .prologue
    .line 690
    const/4 v3, 0x0

    .line 691
    .local v3, res:Z
    const/4 v4, 0x0

    .line 694
    .local v4, resFreObject:Lcom/adobe/fre/FREObject;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v5

    double-to-float v0, v5

    .line 695
    .local v0, centerX:F
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v5

    double-to-float v1, v5

    .line 697
    .local v1, centerY:F
    iget-object v5, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHMoveNotificationFunction;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    invoke-virtual {v5, v0, v1}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->ffiMoveNotification(FF)Z

    move-result v3

    .line 698
    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 704
    .end local v0           #centerX:F
    .end local v1           #centerY:F
    :goto_0
    return-object v4

    .line 700
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 702
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "[PHExtension]"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

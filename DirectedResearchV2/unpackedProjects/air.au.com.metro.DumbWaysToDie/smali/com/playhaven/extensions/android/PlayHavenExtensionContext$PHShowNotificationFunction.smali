.class Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHShowNotificationFunction;
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
    name = "PHShowNotificationFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;


# direct methods
.method private constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHShowNotificationFunction;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHShowNotificationFunction;)V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHShowNotificationFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 9
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 634
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "placementId":Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v2

    double-to-float v6, v2

    .line 636
    .local v6, "centerX":F
    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v2

    double-to-float v7, v2

    .line 637
    .local v7, "centerY":F
    iget-object v0, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHShowNotificationFunction;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    float-to-double v2, v6

    float-to-double v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->ffiShowNotification(Ljava/lang/String;DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .end local v1    # "placementId":Ljava/lang/String;
    .end local v6    # "centerX":F
    .end local v7    # "centerY":F
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 639
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 641
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "[PHExtension]"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

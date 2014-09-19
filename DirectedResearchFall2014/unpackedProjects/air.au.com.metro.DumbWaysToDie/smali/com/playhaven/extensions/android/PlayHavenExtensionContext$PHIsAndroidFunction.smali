.class Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHIsAndroidFunction;
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
    name = "PHIsAndroidFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;


# direct methods
.method private constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHIsAndroidFunction;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHIsAndroidFunction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHIsAndroidFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .parameter "arg0"
    .parameter "args"

    .prologue
    .line 526
    const/4 v1, 0x1

    .line 527
    .local v1, isAndroid:Z
    const/4 v2, 0x0

    .line 530
    .local v2, retFreObject:Lcom/adobe/fre/FREObject;
    :try_start_0
    iget-object v3, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHIsAndroidFunction;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    invoke-virtual {v3}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->isAndroid()Z

    move-result v1

    .line 531
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 537
    :goto_0
    return-object v2

    .line 533
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 535
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "[PHExtension]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

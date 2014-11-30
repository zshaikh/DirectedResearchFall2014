.class Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendContentRequestFunction;
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
    name = "PHSendContentRequestFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;


# direct methods
.method private constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendContentRequestFunction;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendContentRequestFunction;)V
    .locals 0

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendContentRequestFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 616
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "placementId":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v2

    .line 618
    .local v2, "showImmediately":Z
    iget-object v3, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSendContentRequestFunction;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    invoke-virtual {v3, v1, v2}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->ffiSendContentRequest(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    .end local v1    # "placementId":Ljava/lang/String;
    .end local v2    # "showImmediately":Z
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 620
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 622
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "[PHExtension]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSetBaseUrlFunction;
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
    name = "PHSetBaseUrlFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;


# direct methods
.method private constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSetBaseUrlFunction;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSetBaseUrlFunction;)V
    .locals 0

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSetBaseUrlFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 614
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "baseUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHSetBaseUrlFunction;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    # invokes: Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->setBaseURL(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->access$0(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .end local v0    # "baseUrl":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 617
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 619
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "[PHExtension]"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

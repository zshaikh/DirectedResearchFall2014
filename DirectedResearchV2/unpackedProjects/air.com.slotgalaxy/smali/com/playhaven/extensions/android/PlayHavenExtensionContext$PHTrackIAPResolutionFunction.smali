.class Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHTrackIAPResolutionFunction;
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
    name = "PHTrackIAPResolutionFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;


# direct methods
.method private constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHTrackIAPResolutionFunction;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHTrackIAPResolutionFunction;)V
    .locals 0

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHTrackIAPResolutionFunction;-><init>(Lcom/playhaven/extensions/android/PlayHavenExtensionContext;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 683
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "productId":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    .line 685
    .local v2, "quantity":I
    const/4 v5, 0x2

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 686
    .local v4, "strResolution":Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, "receipt":Ljava/lang/String;
    iget-object v5, p0, Lcom/playhaven/extensions/android/PlayHavenExtensionContext$PHTrackIAPResolutionFunction;->this$0:Lcom/playhaven/extensions/android/PlayHavenExtensionContext;

    invoke-virtual {v5, v1, v2, v4, v3}, Lcom/playhaven/extensions/android/PlayHavenExtensionContext;->ffiTrackIAPResolution(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    .end local v1    # "productId":Ljava/lang/String;
    .end local v2    # "quantity":I
    .end local v3    # "receipt":Ljava/lang/String;
    .end local v4    # "strResolution":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 689
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 691
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "[PHExtension]"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

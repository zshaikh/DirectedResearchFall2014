.class Lcom/stuv/ane/flurry/ExtensionContext$3;
.super Lcom/stuv/ane/flurry/BasicFunction;
.source "ExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/flurry/ExtensionContext;->getFunctions()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stuv/ane/flurry/ExtensionContext;


# direct methods
.method constructor <init>(Lcom/stuv/ane/flurry/ExtensionContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stuv/ane/flurry/ExtensionContext$3;->this$0:Lcom/stuv/ane/flurry/ExtensionContext;

    .line 49
    invoke-direct {p0}, Lcom/stuv/ane/flurry/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/stuv/ane/flurry/ExtensionContext$3;->getString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "eventId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stuv/ane/flurry/ExtensionContext$3;->getString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "parameters":Ljava/lang/String;
    :try_start_0
    # invokes: Lcom/stuv/ane/flurry/ExtensionContext;->mapJSON(Ljava/lang/String;)Ljava/util/Map;
    invoke-static {v2}, Lcom/stuv/ane/flurry/ExtensionContext;->access$0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 61
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

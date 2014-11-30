.class Lcom/stuv/ane/flurry/ExtensionContext$5;
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
    iput-object p1, p0, Lcom/stuv/ane/flurry/ExtensionContext$5;->this$0:Lcom/stuv/ane/flurry/ExtensionContext;

    .line 79
    invoke-direct {p0}, Lcom/stuv/ane/flurry/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/stuv/ane/flurry/ExtensionContext$5;->getString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "eventId":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Z)V

    .line 85
    return-void
.end method

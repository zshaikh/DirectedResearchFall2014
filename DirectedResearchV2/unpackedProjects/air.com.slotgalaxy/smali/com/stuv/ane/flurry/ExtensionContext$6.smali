.class Lcom/stuv/ane/flurry/ExtensionContext$6;
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
    iput-object p1, p0, Lcom/stuv/ane/flurry/ExtensionContext$6;->this$0:Lcom/stuv/ane/flurry/ExtensionContext;

    .line 89
    invoke-direct {p0}, Lcom/stuv/ane/flurry/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/stuv/ane/flurry/ExtensionContext$6;->getString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "eventId":Ljava/lang/String;
    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->endTimedEvent(Ljava/lang/String;)V

    .line 95
    return-void
.end method

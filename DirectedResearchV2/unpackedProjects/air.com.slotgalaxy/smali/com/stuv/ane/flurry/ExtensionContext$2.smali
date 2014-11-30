.class Lcom/stuv/ane/flurry/ExtensionContext$2;
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
    iput-object p1, p0, Lcom/stuv/ane/flurry/ExtensionContext$2;->this$0:Lcom/stuv/ane/flurry/ExtensionContext;

    .line 40
    invoke-direct {p0}, Lcom/stuv/ane/flurry/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/stuv/ane/flurry/ExtensionContext$2;->getString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/stuv/ane/flurry/ExtensionContext$2;->this$0:Lcom/stuv/ane/flurry/ExtensionContext;

    invoke-virtual {v1}, Lcom/stuv/ane/flurry/ExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    return-void
.end method

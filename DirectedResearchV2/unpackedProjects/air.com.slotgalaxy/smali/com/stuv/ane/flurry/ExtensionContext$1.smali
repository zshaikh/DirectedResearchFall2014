.class Lcom/stuv/ane/flurry/ExtensionContext$1;
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
    iput-object p1, p0, Lcom/stuv/ane/flurry/ExtensionContext$1;->this$0:Lcom/stuv/ane/flurry/ExtensionContext;

    .line 31
    invoke-direct {p0}, Lcom/stuv/ane/flurry/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/stuv/ane/flurry/ExtensionContext$1;->getInt()I

    move-result v0

    .line 36
    .local v0, "seconds":I
    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/flurry/android/FlurryAgent;->setContinueSessionMillis(J)V

    .line 37
    return-void
.end method

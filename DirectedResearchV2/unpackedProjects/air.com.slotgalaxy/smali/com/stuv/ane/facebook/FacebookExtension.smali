.class public Lcom/stuv/ane/facebook/FacebookExtension;
.super Ljava/lang/Object;
.source "FacebookExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1
    .param p1, "contextType"    # Ljava/lang/String;

    .prologue
    .line 10
    new-instance v0, Lcom/stuv/ane/facebook/FacebookExtensionContext;

    invoke-direct {v0}, Lcom/stuv/ane/facebook/FacebookExtensionContext;-><init>()V

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

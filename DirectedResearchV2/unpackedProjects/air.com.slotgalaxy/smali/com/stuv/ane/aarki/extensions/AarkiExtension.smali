.class public Lcom/stuv/ane/aarki/extensions/AarkiExtension;
.super Ljava/lang/Object;
.source "AarkiExtension.java"

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
    .line 11
    new-instance v0, Lcom/stuv/ane/aarki/extensions/AarkiExtensionContext;

    invoke-direct {v0}, Lcom/stuv/ane/aarki/extensions/AarkiExtensionContext;-><init>()V

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.class public Lcom/AdX/tag/AdXExtension;
.super Ljava/lang/Object;
.source "AdXExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 2
    .parameter "extId"

    .prologue
    .line 27
    const-string v0, "AdXExtension"

    const-string v1, "createContext"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v0, Lcom/AdX/tag/AdXExtensionContext;

    invoke-direct {v0}, Lcom/AdX/tag/AdXExtensionContext;-><init>()V

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "AdXExtension"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "AdXExtension"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

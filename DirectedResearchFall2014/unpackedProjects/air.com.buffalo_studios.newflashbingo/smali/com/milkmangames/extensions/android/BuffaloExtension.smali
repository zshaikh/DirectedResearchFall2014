.class public Lcom/milkmangames/extensions/android/BuffaloExtension;
.super Ljava/lang/Object;
.source "BuffaloExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 14
    const-string v0, "[BUExtension]"

    const-string v1, "CreateContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->getInstance(Z)Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

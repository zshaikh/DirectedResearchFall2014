.class public Lcom/appoxee/AppoxeeANE;
.super Ljava/lang/Object;
.source "AppoxeeANE.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1
    .param p1, "extId"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Lcom/appoxee/ANEContext;

    invoke-direct {v0}, Lcom/appoxee/ANEContext;-><init>()V

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

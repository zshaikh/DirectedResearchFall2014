.class public Lcom/bitrhymes/iab/InAppExtension;
.super Ljava/lang/Object;
.source "InAppExtension.java"

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
    .parameter "arg0"

    .prologue
    .line 10
    new-instance v0, Lcom/bitrhymes/iab/InAppContext;

    invoke-direct {v0}, Lcom/bitrhymes/iab/InAppContext;-><init>()V

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

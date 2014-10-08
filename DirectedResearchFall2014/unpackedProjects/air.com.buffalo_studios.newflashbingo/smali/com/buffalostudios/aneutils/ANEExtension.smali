.class public Lcom/buffalostudios/aneutils/ANEExtension;
.super Ljava/lang/Object;
.source "ANEExtension.java"

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
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 9
    new-instance v0, Lcom/buffalostudios/aneutils/ANEContext;

    invoke-direct {v0}, Lcom/buffalostudios/aneutils/ANEContext;-><init>()V

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

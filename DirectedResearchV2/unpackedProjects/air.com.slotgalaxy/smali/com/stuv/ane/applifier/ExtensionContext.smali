.class public Lcom/stuv/ane/applifier/ExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "ExtensionContext.java"


# static fields
.field private static _wrapper:Lcom/stuv/ane/applifier/ApplifierWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/stuv/ane/applifier/ApplifierWrapper;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/stuv/ane/applifier/ExtensionContext;->_wrapper:Lcom/stuv/ane/applifier/ApplifierWrapper;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v1, Lcom/stuv/ane/applifier/ApplifierWrapper;

    invoke-virtual {p0}, Lcom/stuv/ane/applifier/ExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/stuv/ane/applifier/ApplifierWrapper;-><init>(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    sput-object v1, Lcom/stuv/ane/applifier/ExtensionContext;->_wrapper:Lcom/stuv/ane/applifier/ApplifierWrapper;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "initialise"

    new-instance v2, Lcom/stuv/ane/applifier/ExtensionContext$1;

    invoke-direct {v2, p0}, Lcom/stuv/ane/applifier/ExtensionContext$1;-><init>(Lcom/stuv/ane/applifier/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "changeActivity"

    new-instance v2, Lcom/stuv/ane/applifier/ExtensionContext$2;

    invoke-direct {v2, p0}, Lcom/stuv/ane/applifier/ExtensionContext$2;-><init>(Lcom/stuv/ane/applifier/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "showImpact"

    new-instance v2, Lcom/stuv/ane/applifier/ExtensionContext$3;

    invoke-direct {v2, p0}, Lcom/stuv/ane/applifier/ExtensionContext$3;-><init>(Lcom/stuv/ane/applifier/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "setItemKey"

    new-instance v2, Lcom/stuv/ane/applifier/ExtensionContext$4;

    invoke-direct {v2, p0}, Lcom/stuv/ane/applifier/ExtensionContext$4;-><init>(Lcom/stuv/ane/applifier/ExtensionContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-object v0
.end method
